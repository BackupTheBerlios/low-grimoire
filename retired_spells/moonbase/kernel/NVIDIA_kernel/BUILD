(
  # this patch is for the older version of this module (3128 I believe)
  #patch -p1 < $SOURCE_CACHE/$SOURCE2

  case  $VIA4X  in
    y|Y|j|J)  cp   os-registry.c  os-registry.c.old
              sed  "s/NVreg_EnableVia4x = 0/NVreg_EnableVia4x = 1/"  \
              <    os-registry.c.old  >  os-registry.c
              ;;
  esac

  if  module_installed  linux;  then
    VERSION=`cat /usr/src/linux/include/linux/version.h | grep UTS | cut -d"\"" -f2`
    sedit "s/\$(shell uname -r)/$VERSION/"  Makefile
  fi  &&

  sedit  "s/: gcc-check/:/"  Makefile &&
  sedit  "s,depmod -a ,depmod -a -F /usr/src/linux/System.map ,"  Makefile &&
  prepare_install              &&
  make  IGNORE_CC_MISMATCH=1  install

) > $C_FIFO 2>&1
