namespace Audience.Objects.Cast {
    public class Device : Object {
        private Gee.HashMap<string, string> properties;
        public string type_id { get; construct; }
        public string name { get; construct; }
        public uint16 port { get; construct; }
        public InetAddress address { get; construct; }
        public string friendly_name { get; set; }
        public string status { get; private set; }

        public Device (string name, string address, uint16 port, string @type = "Chromecast") {
            Object (
                name: name,
                type_id: @type,
                address: new InetAddress.from_string (address),
                port: port
            );
        }

        construct {
            properties = new Gee.HashMap<string,string> ();
        }

        ~Device () {
            if (address != null) {
                address.unref ();
            }
        }

        public CastType device_type {
            get {
                return getCastType (type_id);
            }
        }

        public string to_string () {
            return "%s: name: %s, port: %u, address: %s, friendly_name: %s"
                .printf (type_id, name, port, address.to_string (), friendly_name);
        }
    }

    // Regular chromecast, supports video/audio
    public const string CAST_TYPE_CHROMECAST = "cast";
    // Cast Audio device, supports only audio
    public const string CAST_TYPE_AUDIO = "audio";
    // Cast Audio group device, supports only audio
    public const string CAST_TYPE_GROUP = "group";

    public const string MF_GOOGLE = "Google Inc.";

    public enum CastType {
        Chromecast,
        Audio,
        Group
    }

    public CastType getCastType (string identifier) {
        switch (identifier.down ()) {
            case "chromecast":
            case "eureka dongle":
            default:
                return CastType.Chromecast;
            case "chromecast audio":
            case "google home":
            case "google home mini":
                return CastType.Audio;
            case "google cast group":
                return CastType.Group;
        }
    }
}

