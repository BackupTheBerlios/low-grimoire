(

  cd  $SOURCE_DIRECTORY/unix           &&
  ./configure  --prefix=/usr           \
               --mandir=/usr/share/man &&
  make                                 &&

  if [ $BUILDTK = "y" ]
  then
    cd  $SOURCE2_DIRECTORY/unix          &&
    ./configure  --prefix=/usr           \
                 --mandir=/usr/share/man &&
    make
  fi				       &&

  prepare_install                      &&
  cd  $SOURCE_DIRECTORY/unix           &&
  make    install                      &&
  
  if [ $BUILDTK = "y" ]
  then
    cd  $SOURCE2_DIRECTORY/unix        &&
    make    install
  fi 				       &&
  
  cd  /                                &&
  if [ $BUILDTK="y" ]
  then
    rm_source_dir  $SOURCE2_DIRECTORY
  fi				       &&

  ln  -sf  tclsh8.4  /usr/bin/tclsh    

  if [ $BUILTTK="y" ]
  then
    ln  -sf  wish8.4   /usr/bin/wish
  fi

) > $C_FIFO 2>&1


  # Temporary fix while other programs transition to TCL 8.4
  #  ln  -sf           libtcl8.4.so  \
  #           /usr/lib/libtcl8.3.so  &&
