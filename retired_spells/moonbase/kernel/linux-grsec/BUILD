cd  /usr/src/linux

#set the arch once
XARCH="x`arch`"

#Select the prefered linux config method and lets things fall back
while
  case  $CONFIG_KERNEL in
      y|Y)  case $CONFIG_METHOD in
              xconfig ) 
	      		   if [ $DISPLAY ]
			   then
			       make xconfig || make menuconfig || make config
			   else
			       make menuconfig || make config
			   fi ;;
	      menuconfig ) make menuconfig || make config ;;
	      config )     make config ;;
	    esac
            if  query  "Repeat $CONFIG_METHOD?"  n
            then  CONFIG_KERNEL=y
            else  CONFIG_KERNEL=n
            fi     ;;
        *)  false  ;;
    esac
do
  true
done			

backup_modules()  {
  if    [  -d  /lib/modules/$VERSION      ];  then
    rm   -rf   /lib/modules/$VERSION.old
    mv         /lib/modules/$VERSION      \
               /lib/modules/$VERSION.old
  fi
}

(

  yes  n  |  make  oldconfig
  cp .config $CONFIG_CACHE
  make dep                                   &&

  case $XARCH in
     xi386 | xi486 | xi586 | xi686 ) make bzImage;;
    xalpha ) make boot;;
      xppc ) make vmlinux;;
    xsparc ) echo "Sorry no Lunar port yet want to try its easy :-P the penguin team will help.";;
      xarm ) echo "Sorry no Lunar port yet want to try its easy :-P the penguin team will help.";;
     xm68k ) echo "Sorry no Lunar port yet want to try its easy :-P the penguin team will help.";;
     xmips ) echo "Sorry no Lunar port yet want to try its easy :-P the penguin team will help.";;
          *) echo "Opps. You, yea you, yap at hardkrash for forgetting to put in your arch in this module. :-P";;
  esac					     &&
  
  if grep -q "CONFIG_MODULES=y" .config
  then
    make modules
  fi                                         &&
  
  prepare_install                            &&
  
  if grep -q "CONFIG_MODULES=y" .config
  then
    backup_modules                           &&
    make modules_install
  fi                                         &&
  
  case $XARCH in
     xi386 | xi486 | xi586 | xi686 )
             cp arch/i386/boot/bzImage   /boot/vmlinubz-$VERSION
             gcc -Wall -Wstrict-prototypes -O Documentation/networking/ifenslave.c -o /sbin/ifenslave;;
	
    xalpha )
             cp arch/alpha/boot/vmlinux.gz /boot/vmlinux-$VERSION.gz;;

      xppc ) echo "Oh crud they forgot to tell me what should I do for ppc.";;
      xarm ) echo "Oh crud they forgot to tell me what should I do for arm.";;
     xm68k ) echo "Oh crud they forgot to tell me what should I do for m68k.";;
     xmips ) echo "Oh crud they forgot to tell me what should I do for mips.";;
         * ) echo "Oh crud they forgot to tell me what to do for you. ;~-(";;
  esac
) > $C_FIFO 2>&1
