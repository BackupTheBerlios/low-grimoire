(
  mkdir -p xchm            &&
  cd xchm                  &&
  unpack $( guess_filename "${SOURCE[1]}" "$SOURCE_CACHE/$BSPELL/$VERSION" ) &&
  cd ..                    &&
  default_build            &&
  mkdir -p /usr/doc/$SPELL &&
  cp -r "${SOURCE[1]}/"* /usr/doc/$SPELL

) > $C_FIFO 2>&1