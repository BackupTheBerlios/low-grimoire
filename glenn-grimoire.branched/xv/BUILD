(
  for(( i=1 ; $i < 15; i++)); do
    if [ "x${SOURCE[$i]}" != "x" ] ; then
      if [ $i == 4 ] ; then
        patch -p1 --verbose < $(guess_filename ${SOURCE[$i]})
      else
        patch -p0 --verbose < $(guess_filename ${SOURCE[$i]})
      fi
    fi
  done

  sed -i "s/#undef USE_GUNZIP/#define USE_GUNZIP/" config.h
  sed -i "s:/usr/local/bin/gunzip -q:/bin/gunzip -q:" config.h
  sed -i "s:/local::" Makefile
  # for some reason -lX11 is not finding /sr/X11R6/lib/libX11.so eventhough the path is in my ld.so.conf
  sed -i "s:-lX11:-lX11 -L/usr/X11R6/lib:" Makefile
  sed -i "s/^JPEGINC/#JPEGINC/" Makefile
  sed -i "s/JPEGLIB = .*/JPEGLIB = -ljpeg/" Makefile
  sed -i "s/^\\$\\(JPEGDIR\\)/#\\$\\(JPEGDIR\\)/" Makefile
  sed -i "s/\\^\\$\\(JPEGLIB\\)/#\\$\\(JPEGLIB\\)/" Makefile
  sed -i "s/\\tcd \\$\\(JPEGDIR\\).*//" Makefile
  
  sed -i "s/extern char \\*sys_errlist\\[\\]/\\/\\/extern char \\*sys_errlist\\[\\]/" xv.h

  make                        &&
  prepare_install             &&
  make    install  prefix=/usr

) > $C_FIFO 2>&1