(

  prepare_install &&

  for DIR in xfce-mcs-manager xfce-mcs-plugins ; do (
    cd $DIR       &&
    ./configure	--prefix=/usr \
		--sysconfdir=/etc \
		$OPTS &&
    make          &&
    make install

    # hack to prevent collection of doc directory by lunar
    [ -d doc ] && mv doc bleh || true

  ) done

) > $C_FIFO 2>&1
