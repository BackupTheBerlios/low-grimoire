(
   export PATH=/opt/lunar/gnome/2/bin:$PATH
   export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH

   case $VERSION in
      2002-05-02) sedit "s/(eval-when-compile (require 'sawfish.wm.commands.xterm))/(require 'sawfish.wm.commands.xterm)/" \
                         lisp/sawfish/wm/gnome/integration.jl
      ;;
   esac

   ./configure  --build=$BUILD					\
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2			\
		--localstatedir=/var				\
		--infodir=/opt/lunar/gnome/2/share/info		\
		--mandir=/opt/lunar/gnome/2/share/man		\
		--with-gdk-pixbuf				\
		--enable-platform-gnome-2			&&

   default_make

) > $C_FIFO 2>&1
