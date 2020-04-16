namespace Audience.Services.Cast {
    public const string NS_CONNECTION = "urn:x-cast:com.google.cast.tp.connection";
    public const string NS_RECEIVER = "urn:x-cast:com.google.cast.receiver";
    public const string NS_HEARTBEAT = "urn:x-cast:com.google.cast.tp.heartbeat";

    public const string PLATFORM_DESTINATION_ID = "receiver-0";

    public const string MESSAGE_TYPE = "type";
    public const string TYPE_PING = "PING";
    public const string TYPE_RECEIVER_STATUS = "RECEIVER_STATUS";
    public const string TYPE_PONG = "PONG";
    public const string TYPE_CONNECT = "CONNECT";
    public const string TYPE_CLOSE = "CLOSE";
    public const string TYPE_GET_STATUS = "GET_STATUS";
    public const string TYPE_LAUNCH = "LAUNCH";
    public const string TYPE_LAUNCH_ERROR = "LAUNCH_ERROR";
    public const string TYPE_LOAD = "LOAD";

    // The socket connection is being setup
    public const string CONNECTION_STATUS_CONNECTING = "CONNECTING";
    // The socket connection was complete
    public const string CONNECTION_STATUS_CONNECTED = "CONNECTED";
    // The socket connection has been disconnected
    public const string CONNECTION_STATUS_DISCONNECTED = "DISCONNECTED";
    // Connecting to socket failed (after a CONNECTION_STATUS_CONNECTING)
    public const string CONNECTION_STATUS_FAILED = "FAILED";
    // Failed to resolve service name
    public const string CONNECTION_STATUS_FAILED_RESOLVE = "FAILED_RESOLVE";
    // The socket connection was lost and needs to be retried
    public const string CONNECTION_STATUS_LOST = "LOST";

    public const string APP_ID = "appId";
    public const string REQUEST_ID = "requestId";
    public const string SESSION_ID = "sessionId";
    public const string ERROR_REASON = "reason";

    public const int HB_PING_TIME = 10;
    public const int HB_PONG_TIME = 10;
    public const double POLL_TIME_BLOCKING = 5.0;
    public const double POLL_TIME_NON_BLOCKING = 0.01;
    public const int TIMEOUT_TIME = 30;
    public const int RETRY_TIME = 5;

    class CastSocketClient : Object {

        private Audience.Objects.Cast.Device _device;
        public Audience.Objects.Cast.Device device {
            get {
                return _device;
            }
        }
        private GLib.SocketClient _socket;

        private GLib.SocketConnection _connection;
        public GLib.SocketConnection connection {
            get {
                return _connection;
            }
        }

        public CastSocketClient (Audience.Objects.Cast.Device device) {
            _device = device;
            _socket = new GLib.SocketClient ();
            _socket.tls = true;
            _connection = _socket.connect (new InetSocketAddress (_device.address, _device.port));
        }

        protected CastMessage read_message () {
            InputStream input_stream = connection.get_input_stream ();

            // First 4 bytes is Big-Endian payload lenght
            var prologue = input_stream.read_bytes (4);
            int read_len = int.from_big_endian ((int32) prologue.get_data ());

            debug ("Reading %i bytes", read_len);

            // Read that many bytes
            uint8[] message_bytes = input_stream.read_bytes (read_len).get_data ();

            var message = new Protobuf.DecodeBuffer (message_bytes);

            return new CastMessage.from_data (message, read_len);

        }
    }
}

