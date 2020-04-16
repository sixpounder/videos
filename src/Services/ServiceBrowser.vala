namespace Audience.Services {
    public class ServiceBrowser : Object {

        private static ServiceBrowser instance;

        public static ServiceBrowser get_default () {
            if (ServiceBrowser.instance == null) {
                ServiceBrowser.instance = new ServiceBrowser ();
            }

            return ServiceBrowser.instance;
        }

        private const string SERVICE_TYPE = "_googlecast._tcp";

        private Avahi.Client client;
        private List<Avahi.ServiceResolver> resolvers;
        private Avahi.ServiceBrowser service_browser;
        private MainLoop discovery_loop;
        private Thread<void*> discovery_thread;

        public Gee.ArrayList<Audience.Objects.Cast.Device> devices { get; private set; }

        /* Signals */
        public signal void new_device (Audience.Objects.Cast.Device device);
        public signal void removed_device (Audience.Objects.Cast.Device device);

        private ServiceBrowser () {}

        construct {
            devices = new Gee.ArrayList<Audience.Objects.Cast.Device> ();
        }

        public void start () {
            discovery_thread = new Thread<void*> ("discovery_thread", () => {
                try {
                    if (discovery_loop == null) {
                        discovery_loop = new MainLoop ();
                    }
                    service_browser = new Avahi.ServiceBrowser (SERVICE_TYPE);
                    service_browser.new_service.connect (on_new_service);
                    service_browser.removed_service.connect (on_removed_service);
                    client = new Avahi.Client ();
                    client.start ();
                    service_browser.attach (client);
                    resolvers = new List<Avahi.ServiceResolver> ();
                    discovery_loop.run ();
                 } catch (Avahi.Error e) {
                    warning (e.message);
                 }

                 return null;
            });
        }

        public void stop () {
            if (discovery_thread != null) {
                if (discovery_loop.is_running ()) {
                    discovery_loop.quit ();
                }
            }
        }

        public void on_found (Avahi.Interface @interface, Avahi.Protocol protocol, string name, string type, string domain, string hostname, Avahi.Address? address, uint16 port, Avahi.StringList? txt) {

            string t_friendly_name, t_device_type_id;

            if (txt != null) {
                string fn_key;
                char[] fn_value;
                txt.find ("fn").copy ().get_pair (out fn_key, out fn_value);
                if (fn_key != null && fn_value != null) {
                    t_friendly_name = (string) fn_value;
                } else {
                    t_friendly_name = name;
                }

                string md_key;
                char[] md_value;
                txt.find ("md").copy ().get_pair (out md_key, out md_value);
                if (md_key != null && md_value != null) {
                    t_device_type_id = (string) md_value;
                } else {
                    t_device_type_id = "Chromecast";
                }

            } else {
                t_friendly_name = name;
                t_device_type_id = "Chromecast";
            }

            var dev = new Audience.Objects.Cast.Device (
                name,
                address.to_string (),
                port,
                t_device_type_id
            );

            dev.friendly_name = t_friendly_name;

            // debug ("%s", dev.to_string ());

            devices.add (dev);
            new_device (dev);
        }

        public void on_new_service (Avahi.Interface @interface, Avahi.Protocol protocol, string name, string type, string domain, Avahi.LookupResultFlags flags) {
            Avahi.ServiceResolver service_resolver = new Avahi.ServiceResolver (
                @interface,
                Avahi.Protocol.UNSPEC,
                name,
                type,
                domain,
                Avahi.Protocol.UNSPEC
            );

            service_resolver.found.connect (on_found);
            service_resolver.failure.connect ( (error) => {
              warning (error.message);
            });

            try {
              service_resolver.attach (client);
            } catch (Avahi.Error e) {
              warning (e.message);
            }

            resolvers.append (service_resolver);
        }

        public void on_removed_service (Avahi.Interface @interface, Avahi.Protocol protocol, string name, string type, string domain, Avahi.LookupResultFlags flags) {
        }
    }
}

