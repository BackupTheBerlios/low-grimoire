(

  export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH &&

  ./configure  --build=$BUILD                                  \
               --sysconfdir=/etc                               \
               --prefix=/opt/lunar/gnome/2                     \
               --localstatedir=/var                            \
               --infodir=/opt/lunar/gnome/2/share/info         \
               --mandir=/opt/lunar/gnome/2/share/man           \
               --enable-platform-gnome-2		       \
               --disable-gtk-doc                               &&

  default_make &&

  # tweaks I needed to get it up:
  if ! grep -q '/usr/lib/bonobo/servers' /etc/bonobo-activation/bonobo-activation-config.xml ; then
    sedit "s:<searchpath>:<searchpath>\n\t<item>/usr/lib/bonobo/servers</item>:" /etc/bonobo-activation/bonobo-activation-config.xml
  fi

) > $C_FIFO 2>&1
