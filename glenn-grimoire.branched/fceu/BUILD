(
    sed -i "14i OBJDRIVER	:= \\\${OBJDRIVER} drivers/common/sfifo.o" Makefile.unixsdl.gtk
    
    make -f Makefile.unixsdl.gtk		  &&
    prepare_install                 		  &&
    install  -o root -g root -m 755 fceu /usr/bin &&
    mkdir -p /usr/doc/$SPELL                      &&
    cp -r Documentation /usr/doc/$SPELL

) > $C_FIFO 2>&1

