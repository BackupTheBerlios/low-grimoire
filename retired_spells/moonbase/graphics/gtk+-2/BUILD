(
export PKG_CONFIG_PATH=/usr/lib/pkgconfig &&

if  [ "$SHADOW" == "y" ] ; then
  cd gtk &&
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  cd $SOURCE_DIRECTORY
fi

./configure --prefix=/usr             \
            --sysconfdir=/etc         \
            --infodir=/usr/share/info \
            --mandir=/usr/share/man   \
            --with-xinput=yes         \
			$OPTS                     &&

default_build

) > $C_FIFO 2>&1
