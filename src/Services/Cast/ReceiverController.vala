namespace Audience.Services.Cast {
    public class ReceiverController : BaseController {
        public ReceiverController  () {
            base(NS_RECEIVER, null, true);
        }
    }

    public bool receive_message (string message, uint8[] data) {
        return true;
    }
}

