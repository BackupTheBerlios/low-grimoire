#cd $BUILD_DIR				&&
#tar xf $( guess_filename $SOURCE )      &&
cd windowlab-$VERSION 

(
  sed -i "s:-02:${CFLAGS}:" Makefile
  sed -i "s:cp -i menurc.sample $(CFGDIR)/menurc:cp menurc.sample $(CFGDIR)/menurc: " Makefile

  make             &&
  prepare_install  &&
  echo "y" | make    install  
   
) > $C_FIFO 2>&1
