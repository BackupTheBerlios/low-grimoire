case $VERSION in
	2.0.1)  bzcat  $SCRIPT_DIR/discover.patch.bz2  |
		patch  -p1  ;;
esac  

  ./configure	--build=$BUILD			\
		--prefix=/usr			\
		--sysconfdir=/etc		\
		--localstatedir=/var		\
		$OPTS				&&
  make						&&
  prepare_install				&&
  make install					

