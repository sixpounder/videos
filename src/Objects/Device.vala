namespace Audience.Objects {
    public class Device : Object {
        private Gee.HashMap<string, string> properties;
        public string name { get; construct; }
        public uint16 port { get; construct; }
        public InetAddress address { get; construct; }
        public string friendly_name { get; construct; }
        public string status { get; private set; }

        public Device (string name, string address, uint16 port) {
            Object (
                name: name,
                friendly_name: name,
                address: new InetAddress.from_string (address),
                port: port
            );
        }

        construct {
            properties = new Gee.HashMap<string,string> ();
        }

        ~Device () {
            if (this.address != null) {
                this.address.unref ();
            }
        }

        public void set_properties (string raw_data) {

        }
    }
}

