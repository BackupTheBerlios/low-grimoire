(

  ./configure	--prefix=/usr \
		--sysconfdir=/etc \
		$OPTS &&
  default_make

  # hack to prevent collection of doc directory by lunar
  [ -d doc ] && mv doc bleh || true

) > $C_FIFO 2>&1
