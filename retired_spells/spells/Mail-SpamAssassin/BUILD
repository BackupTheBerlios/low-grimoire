(

    echo "\n" | perl Makefile.PL    	RUN_RAZOR1_TESTS=y		   \
					RUN_RAZOR2_TESTS=Y	 	   \
					PREFIX=/usr 			   \
                        		SYSCONFDIR=/etc			   &&
    make					            	      	   &&
    prepare_install                   					   &&
    make install                                			   &&
    mkdir -p      /usr/doc/$BSPELL                                         &&
    cp ninjabutton.png /usr/doc/$BSPELL                                    &&
    cp *.txt      /usr/doc/$BSPELL                                         &&
    cp TRADEMARK  /usr/doc/$BSPELL                                         &&
    cp README     /usr/doc/$BSPELL                                         &&
    cp procmailrc.example /usr/doc/$BSPELL                                 &&
    cp Changes    /usr/doc/$BSPELL                                         &&
    cp -r contrib /usr/doc/$BSPELL                                         &&
    cp -r masses  /usr/doc/$BSPELL                                         &&
    cp -r rules   /usr/doc/$BSPELL                                         &&
    cp -r sql     /usr/doc/$BSPELL                                         &&
    cp -r tools   /usr/doc/$BSPELL 

    install -D -m755 $SCRIPT_DIR/spamd.sh /etc/init.d/spamd.sh 
    install -D -m644 $SCRIPT_DIR/spamd.conf.d /etc/spamd.conf 
   
) > $C_FIFO 2>&1



