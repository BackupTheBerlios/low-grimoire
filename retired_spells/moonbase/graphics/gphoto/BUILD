(

  cat $SCRIPT_DIRECTORY/gphoto-dir.patch      | patch -p1 &&
  cat $SCRIPT_DIRECTORY/gphoto-option.patch   | patch -p1 &&
  cat $SCRIPT_DIRECTORY/gphoto-port.patch     | patch -p1 &&
  cat $SCRIPT_DIRECTORY/gphoto-retry.patch    | patch -p1 &&
  cat $SCRIPT_DIRECTORY/gphoto-rsony.patch    | patch -p1 &&
  cat $SCRIPT_DIRECTORY/gphoto-size.patch     | patch -p1 &&
  cat $SCRIPT_DIRECTORY/gphoto-strcat.patch   | patch -p1 &&
  default_build

) > $C_FIFO 2>&1
