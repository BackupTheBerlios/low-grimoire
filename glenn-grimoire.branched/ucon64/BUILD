(

  cd src                      &&
  ./configure --prefix=/usr   \
              $OPTS           &&
  make                        &&
  cd ..                       &&
  prepare_install             &&
  cp src/ucon64 /usr/bin      &&
  mkdir -p /usr/doc/$SPELL    &&
  cp -r *.html images /usr/doc/$SPELL
  
  ### need to add install for DAT files
  pushd `pwd`                 &&
  mkdir -p /usr/share/$SPELL  &&
  cd /usr/share/$SPELL        &&
  unpack $( guess_filename "${SOURCE[1]}" "$SOURCE_CACHE/$BSPELL/$VERSION" ) &&
  unpack $( guess_filename "${SOURCE[2]}" "$SOURCE_CACHE/$BSPELL/$VERSION" ) &&
  unpack $( guess_filename "${SOURCE[3]}" "$SOURCE_CACHE/$BSPELL/$VERSION" ) &&
  chmod -w *                  &&
  chmod +r *                  &&
  popd

) > $C_FIFO 2>&1