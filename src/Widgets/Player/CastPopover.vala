public class Audience.Widgets.CastPopover : Gtk.Popover {
    protected Audience.Services.ServiceBrowser service_browser;

    private Gtk.ScrolledWindow playlist_scrolled;

    public CastPopover () {
        opacity = GLOBAL_OPACITY;
        service_browser = Audience.Services.ServiceBrowser.get_default ();

        var grid = new Gtk.Grid ();
        grid.row_spacing = 6;
        grid.column_spacing = 12;
        grid.margin = 6;

        update ();

        add (grid);
    }

    // Updates widgets according to currently available devices
    public void update () {
        foreach (Audience.Objects.Cast.Device device in service_browser.devices) {
            stdout.printf ("%s", device.name);
        }
    }
}

