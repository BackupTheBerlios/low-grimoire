(
 
  ./configure  --prefix=/opt/lunar/gnome/2 \
               --disable-werror            \
               --with-mozilla-snapshot=1.3 \
               $OPTS      &&
  default_make  &&

  cp $SCRIPT_DIRECTORY/galeon /opt/lunar/gnome/2/bin
  
) > $C_FIFO 2>&1
