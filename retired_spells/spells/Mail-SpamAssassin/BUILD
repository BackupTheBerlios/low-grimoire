(

    echo "\n" | perl Makefile.PL    	RUN_RAZOR1_TESTS=y		   \
					RUN_RAZOR2_TESTS=Y	 	   \
					PREFIX=/usr 			   \
                        		SYSCONFDIR=/etc			   &&
    make					            	      	   &&
    prepare_install                   					   &&
    make install                                			   &&

    install -D -m 755 $SCRIPT_DIR/spamd.sh /etc/init.d/spamd.sh 
    install -D -m 644 $SCRIPT_DIR/spamd.conf.d /etc/spamd.conf 
   
) > $C_FIFO 2>&1



