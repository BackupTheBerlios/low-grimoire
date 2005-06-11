(
  patch -p 0 < $SCRIPT_DIR/patch.sorcerer.ddclient
  patch -p 0 < $SCRIPT_DIR/patch.sorcerer.mss1.ddclient
  prepare_install                				&&
  install -m 755 ddclient /usr/sbin/                        	&&
  install -m 755 $SCRIPT_DIR/ddclient.daemon.sh /etc/init.d/ 	&&
  mkdir -p /etc/ddclient			         	&&
  cp sample-etc_* /etc/ddclient                         
  

) > $C_FIFO 2>&1
