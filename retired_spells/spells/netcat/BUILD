export XFLAGS="-DLINUX"
CC="gcc ${CFLAGS}"
(
   
    cp netcat.c netcat.c.orig
    sed -e "s:#define HAVE_BIND:#undef HAVE_BIND:" \
		netcat.c.orig > netcat.c
    prepare_install                 	     &&
    make linux				     &&
    install nc /usr/bin
) > $C_FIFO 2>&1

