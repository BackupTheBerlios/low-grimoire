cd $BUILD_DIR				&&
tar xf $( guess_filename $SOURCE )      &&
cd windowlab-$VERSION 

(
  sed -i "s:-02:${CFLAGS}:" Makefile
  make             &&
  prepare_install  &&
  make    install  
   
) > $C_FIFO 2>&1
