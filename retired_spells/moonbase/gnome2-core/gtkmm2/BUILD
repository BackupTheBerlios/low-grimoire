(
  export PATH=/opt/lunar/gnome/2/bin:$PATH                                 &&
  export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH &&
  
  ./configure  --build=$BUILD					\
                --sysconfdir=/etc                               \
                --prefix=/usr			\
		--localstatedir=/var				\

  default_make
  
) > $C_FIFO 2>&1
