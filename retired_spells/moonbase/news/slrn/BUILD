(

   patch -p1 < $SCRIPT_DIRECTORY/$MODULE-$VERSION-mem_leak.diff &&
   patch -p1 < $SCRIPT_DIRECTORY/$MODULE-$VERSION-popup_win.diff &&
   default_build
) > $C_FIFO 2>&1
