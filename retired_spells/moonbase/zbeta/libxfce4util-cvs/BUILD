(
  DIR=libxfce4util
  
  (
    cd $DIR       &&
    ./configure	--prefix=/usr \
		--sysconfdir=/etc \
		$OPTS &&
    make
  )           &&

  prepare_install &&
  
  (
    cd $DIR       &&
    make install

    # hack to prevent collection of doc directory by lunar
    [ -d doc ] && mv doc bleh || true
  )

) > $C_FIFO 2>&1
