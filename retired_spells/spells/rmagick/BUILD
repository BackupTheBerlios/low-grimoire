(
    ./configure --prefix=/usr	            				      &&
    ruby install.rb config --prefix=/usr --doc-dir=/usr/share/doc/$(BSPELL)   &&
    ruby install.rb setup	      	    				      &&
    prepare_install                   					      &&
    ruby install.rb install

) > $C_FIFO 2>&1

