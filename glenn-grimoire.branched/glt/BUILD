(
  INCLUDEDIR=/usr/include/glt
  local -a SUBDIRS=("fonts" "glt" "glui" "glutm" "math" "mesh" "misc" "node" "unifont")

  make                        &&
  prepare_install             &&
  install -o root -g root -m 644 lib/libgl* /usr/lib &&
  ( for SUB in ${SUBDIRS[*]}; do
    mkdir -p $INCLUDEDIR/$SUB &&
    install -o root -g root -m 644 src/$SUB/*.h $INCLUDEDIR/$SUB
  done )
  mkdir -p /usr/doc/$SPELL   &&
  cd /usr/doc/$SPELL         &&
  unpack $( guess_filename "${SOURCE[4]}" "$SOURCE_CACHE/$BSPELL/$VERSION" ) &&
  cd $BUILD_DIR              &&
  mkdir -p /usr/share/$SPELL &&
  install -o root -g root -m 755 bin/* /usr/share/$SPELL  &&
  install -o root -g root -m 755 src/program/glui/{Makefile,*.cpp} /usr/share/$SPELL  &&
  cd /usr/share              &&
  unpack $( guess_filename "${SOURCE[1]}" "$SOURCE_CACHE/$BSPELL/$VERSION" )
  
  #make    install  prefix=/usr

) > $C_FIFO 2>&1