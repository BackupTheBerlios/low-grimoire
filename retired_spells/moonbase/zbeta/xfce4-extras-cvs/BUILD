
SUBDIRS="xfce4-mixer xfce4-toys xfce4-systray xfce4-trigger-launcher
xfce4-themes xffm-icons xfwm4-themes"

(
  for d in $SUBDIRS; do
  
    ( cd $d					&&
      echo &&
      echo "=================================" &&
      echo "  $d" &&
      echo "=================================" &&
      echo &&
      ./configure	--prefix=/usr \
      			--sysconfdir=/etc \
			$OPTS 			&&
      make
    ) || exit 1
   
  done			&&

  prepare_install	&&

  for d in $SUBDIRS; do
  
    ( cd $d					&&
      echo &&
      echo "=================================" &&
      echo "  installing $d" &&
      echo "=================================" &&
      echo &&
      make install
    ) || exit 1
    
  done
  
) > $C_FIFO 2>&1
