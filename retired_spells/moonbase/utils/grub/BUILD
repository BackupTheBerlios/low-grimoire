(

  patch_it  $SOURCE_CACHE/$SOURCE2 1 &&

  unset CFLAGS CXXFLAGS CPPFLAGS &&
  default_build &&            
  gzip -9 ChangeLog &&
  mkdir -p $DOCUMENT_DIRECTORY/grub &&
  cp ChangeLog.gz NEWS TODO $DOCUMENT_DIRECTORY/grub &&
  if [ ! -d /boot/grub ] ; then
    mkdir -p /boot/grub
  fi
  cp /usr/share/grub/i386-pc/*1_5 /usr/share/grub/i386-pc/stage* /boot/grub

) > $C_FIFO 2>&1
