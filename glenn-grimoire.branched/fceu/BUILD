(

if [ "$VERSION" != "0.97.5" ] ; then
    configure --prefix=/usr            \
              $OPTS                    &&
    make                               &&
    prepare_install                    &&
    make install                       &&
    mkdir -p /usr/doc/$SPELL           &&
    cp -r Documentation /usr/doc/$SPELL
else
    make -f Makefile.unixsdl.gtk		  &&
    prepare_install                 		  &&
    install  -o root -g root -m 755 fceu /usr/bin &&
    mkdir -p /usr/doc/$SPELL                      &&
    cp -r Documentation /usr/doc/$SPELL
fi

) > $C_FIFO 2>&1

