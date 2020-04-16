namespace Audience.Services.Cast {
    public class BaseController : Object {
        private string _namespace;
        public string @namespace {
            get {
                return _namespace;
            }
            set {
                _namespace = value;
            }
        }

        private string _supporting_app_id;
        public string supporting_app_id {
            get {
                return _supporting_app_id;
            }
            set {
                _supporting_app_id = value;
            }
        }

        private bool _target_platform;
        public bool target_platform {
            get {
                return _target_platform;
            }
            set {
                _target_platform = value;
            }
        }

        public BaseController (string @namespace, string? supporting_app_id = null, bool target_platform = false) {
            this.@namespace = @namespace;
            this.supporting_app_id = supporting_app_id;
            this.target_platform = target_platform;
        }
   }
}

