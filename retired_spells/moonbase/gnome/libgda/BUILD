(
  case  $VERSION  in
    0.2.93)  ln  -s  sqlite/sqlite.h providers/gda-default-server/sqlite.h
      ;;
  esac

  patch -p1 < $SCRIPT_DIRECTORY/libgda-0.2.96-gentoo.patch

  default_build

) > $C_FIFO 2>&1
