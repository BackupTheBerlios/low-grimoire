(

cd $SOURCE_DIRECTORY2/$SOURCE_DIRECTORY3            &&
  ./configure                 &&
  make                           &&

cd $SOURCE_DIRECTORY2/$SOURCE_DIRECTORY5            &&
  make -f scripts/makefile.linux &&

cd $SOURCE_DIRECTORY2/$SOURCE_DIRECTORY4            &&
  make &&

cd $SOURCE_DIRECTORY2            &&
  default_config                 &&
  make                           &&

cd $SOURCE_DIRECTORY6            &&
  ./autogen.sh    &&
  default_build                  

) > $C_FIFO 2>&1
