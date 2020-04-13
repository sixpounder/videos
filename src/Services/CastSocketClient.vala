namespace Audience.Services {
    private Audience.Objects.Device _device;
    private GLib.SocketClient _socket;

    class CastSocketClient : Object {
        public CastSocketClient (Audience.Objects.Device device) {
            _device = device;
            _socket = new GLib.SocketClient();
            _socket.connect(_device.address);
        }
    }

    public void play (Audience.Objects.Video video) {}
    public void stop () {}
    public void pause () {}
}

