(
  export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH
  export PATH=/opt/lunar/gnome/2/bin:/usr/X11R6/bin:$PATH

  unset CFLAGS CXXFLAGS CPPFLAGS CCACHE_NOLINK CCACHE_DIR && 

  cd    abi       &&                         

  ./autogen.sh                                                  &&
  ./configure   --enable-xft                                    \
                --with-libxml2                                  \
                --build=$BUILD                                  \
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2			\
		--localstatedir=/var				\
		--infodir=/opt/lunar/gnome/2/share/info		\
		--mandir=/opt/lunar/gnome/2/share/man		&&
             
  default_make 
            

) > $C_FIFO 2>&1
