(

  # Look for sound support in kernel
  CONFIG_SOUND=$(grep "CONFIG_SOUND=" "${CONFIG_CACHE}/.config") &&

  #There a case or two that this could be "problematic"
  #So let's just "force it our way" :)
  #hvisage
  sedit "s/etc\/rc.d/etc/" Makefile
  # the following change is required to build rc3
  rm -f include/linux/isapnp.h               &&

  # Load soundcore if needed, fail if no sound support found
  case "${CONFIG_SOUND#*=}" in
      m)  modprobe soundcore ;;
      y)  true ;;
      *)  echo "*** No sound support found in kernel ***"; false ;;
  esac                                       &&

  # Correct the path to awk which is hardcoded in a script
  sedit "s:/usr/bin/awk:/bin/awk:" utils/convert_isapnp_ids

  ./configure  --prefix=/usr                 \
               --with-isapnp=auto            \
               --with-sequencer=yes          \
               --with-oss=yes                \
               --with-debug=none             \
               --with-kernel=/usr/src/linux  \
               --with-cards=$CARD            &&
  make                                       &&
  prepare_install                            &&
  make    install                            &&
  #rm  -Rf  /dev/snd                          &&
  #ln  -sf  /devices/snd  /dev/snd            &&
  ln  -sf  ../init.d/alsasound  /etc/rcS.d/S99alsasound &&
  if ! module_installed devfsd ; then
     ./snddevices
  fi

) > $C_FIFO 2>&1
