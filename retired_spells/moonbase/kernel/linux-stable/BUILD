cd  /usr/src/linux

while  
  case  $CONFIG_KERNEL in
      y|Y)  if [ "$CONFIG_METHOD" == "xconfig" ]
          then
	      if [ "$DISPLAY" ]
	      then
	          make xconfig
	      else
	          message xconfig could find display falling back to menuconfig
		  make menuconfig
	      fi
	  else
	      make  $CONFIG_METHOD
	  fi

          if  query  "Repeat $CONFIG_METHOD?  "  n
          then  CONFIG_KERNEL=y
          else  CONFIG_KERNEL=n
          fi     ;;
      *)  false  ;;
  esac
do
  true
done


backup_modules()  {

  if    [  -d  /lib/modules/$VERSION-stable      ];  then
    rm   -rf   /lib/modules/$VERSION-stable.old
    mv         /lib/modules/$VERSION-stable      \
               /lib/modules/$VERSION-stable.old
  fi

}


(

  yes  n  |  make  oldconfig
  cp  .config  $CONFIG_CACHE
  rm -f arch/i386/boot/bzImage
  make  dep              &&
  make clean             &&
  make  bzImage          &&
  make  modules          &&
  prepare_install        &&
  backup_modules         &&
  make  modules_install  &&
  cp    arch/i386/boot/bzImage   /boot/stable_bz-$VERSION &&
  # link the modules so depmod can find them!
  ln -f -s /lib/modules/$VERSION-stable /lib/modules/$VERSION &&
  gcc -Wall -Wstrict-prototypes -O Documentation/networking/ifenslave.c -o /sbin/ifenslave

) > $C_FIFO 2>&1
