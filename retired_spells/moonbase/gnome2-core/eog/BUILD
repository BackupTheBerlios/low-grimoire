(
   export PATH=/opt/lunar/gnome/2/bin:$PATH &&
   export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH &&

   ./configure  --build=$BUILD                                  \
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2                     \
                --localstatedir=/var                            \
                --infodir=/opt/lunar/gnome/2/share/info         \
                --mandir=/opt/lunar/gnome/2/share/man           \
                --enable-platform-gnome-2                       &&

   make                                                         &&
   prepare_install                                              &&
   if [ ! -d /usr/share/icons ]; then
       mkdir /usr/share/icons
   fi								&&
   cp gnome-eog.png /usr/share/icons/.                          &&
   make install

) > $C_FIFO 2>&1
