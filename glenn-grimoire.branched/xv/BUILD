(
  for(( i=1 ; $i < 15; i++)); do
    if [ "x${SOURCE[$i]}" != "x" ] ; then
      if [ $i == 4 ] ; then
        patch -p1 < $(guess_filename ${SOURCE[$i]})
      else
        patch -p0 < $(guess_filename ${SOURCE[$i]})
      fi
    fi
  done

  sedit "s/#undef USE_GUNZIP/#define USE_GUNZIP/" config.h
  sedit "s/\\/usr\\/local\\/bin\\/gunzip -q/\\/bin\\/gunzip -q/" config.h
  sedit "s/\\/local//" Makefile
  # for some reason -lX11 is not finding /sr/X11R6/lib/libX11.so eventhough the path is in my ld.so.conf
  sedit "s/-lX11/-lX11 -L\\/usr\\/X11R6\\/lib/" Makefile
  sedit "s/^JPEGINC/#JPEGINC/" Makefile
  sedit "s/JPEGLIB = .*/JPEGLIB = -ljpeg/" Makefile
  sedit "s/^\\$\\(JPEGDIR\\)/#\\$\\(JPEGDIR\\)/" Makefile
  sedit "s/\\^\\$\\(JPEGLIB\\)/#\\$\\(JPEGLIB\\)/" Makefile
  sedit "s/\\tcd \\$\\(JPEGDIR\\).*//" Makefile
  
  sedit "s/extern char \\*sys_errlist\\[\\]/\\/\\/extern char \\*sys_errlist\\[\\]/" xv.h

  make                        &&
  prepare_install             &&
  make    install  prefix=/usr

) > $C_FIFO 2>&1