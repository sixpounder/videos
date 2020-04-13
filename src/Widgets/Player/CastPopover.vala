public class Audience.Widgets.CastPopover : Gtk.Popover {
    protected Audience.Services.ServiceBrowser service_browser;

    private Gtk.ScrolledWindow playlist_scrolled;

    public CastPopover () {
        opacity = GLOBAL_OPACITY;
        service_browser = Audience.Services.ServiceBrowser.get_default ();

        foreach (Audience.Objects.Device device in service_browser.devices) {
            stdout.printf ("%s", device.name);
        }
    }

    // Updates widgets according to currently available devices
    public void update () {}
}

