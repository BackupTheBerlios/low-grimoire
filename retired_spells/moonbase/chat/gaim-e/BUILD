(
  tar -xzf $SOURCE_CACHE/$SOURCE2 -C ./plugins &&
  default_config &&
  cd $SOURCE_DIRECTORY/plugins/gaim-e 	&&
  sedit 's:GAIMELIBS = -lgpgme -lgcrypt:GAIMELIBS = -L/opt/lunar/gpgme-0.3.x/lib -lgpgme -lgcrypt:g' Makefile &&
  sedit 's:$(LIBTOOL) --mode=compile $(CC) -I ../.. -I ../../src $(CFLAGS) -c $< $(PLUGIN_CFLAGS):$(LIBTOOL) --mode=compile $(CC) -I ../.. -I ../../src $(CFLAGS) -I /opt/lunar/gpgme-0.3.x/include -c $< $(PLUGIN_CFLAGS):g' Makefile &&
  cd $SOURCE_DIRECTORY 	&&
  make 			&&
  cd plugins/gaim-e	&&
  echo "got here"	&&
  make			&&
  prepare_install	&&
  cd ../..		&&
  make install		&&
  cd plugins/gaim-e	&&
  make install		
) > $C_FIFO 2>&1
