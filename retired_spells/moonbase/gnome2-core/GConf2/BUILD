(

   export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH &&
  
   ./configure  --build=$BUILD					\
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2			\
		--localstatedir=/var				\
		--infodir=/opt/lunar/gnome/2/share/info		\
		--mandir=/opt/lunar/gnome/2/share/man		\
		--disable-gtk-doc				&&

   default_make							&&

   chmod a+rX /etc/gconf/*

) > $C_FIFO 2>&1

