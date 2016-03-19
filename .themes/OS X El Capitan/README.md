OS X mimics the flat and bright look of OS X 10.11 El Capitan

More info on http://b00merang.weebly.com/os-x-el-capitan.html

### Manual installation

Extract the zip file to the themes directory i.e. `/usr/share/themes/`

To set the theme in Gnome, run the following commands in Terminal,

```
gsettings set org.gnome.desktop.interface gtk-theme "OS\ X\ El\ Capitan"
gsettings set org.gnome.desktop.wm.preferences theme "OS\ X\ El\ Capitan"
```

To set the theme in Xfce, run the following commands in Terminal,

```
xfconf-query -c xsettings -p /Net/ThemeName -s "OS\ X\ El\ Capitan"
xfconf-query -c xfwm4 -p /general/theme -s "OS\ X\ El\ Capitan"
```

### Requirements

GTK+ 3.6 or above

Murrine and Pixmap theme engines

### Code and license

Report bugs or contribute at http://b00merang.weebly.com/contact.html

License: GPL-3.0+
