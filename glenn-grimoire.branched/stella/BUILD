(
    OFFSETDIR="stella_$VERSION/"
    
if [ "$VERSION" != "1.3" ] ; then
    cd "$OFFSETDIR"               &&
    make -C src/build linux-gl && # ugly, something's wrong
    prepare_install               &&
    install  -o root -g root -m 755 src/build/stella /usr/bin &&
    mkdir -p /usr/doc/$SPELL      &&
    cp -r docs/* /usr/doc/$SPELL                              
else
    make -C src/build linux-sdl &&
    prepare_install                &&
    install  -o root -g root -m 755 src/build/stella /usr/bin &&
    mkdir -p /usr/doc/$SPELL       &&
    cp -r docs/* /usr/doc/$SPELL   &&
    mkdir -p /usr/share/$SPELL     &&
    cp -r src/stellarc /usr/doc/$SPELL
fi

) > $C_FIFO 2>&1

