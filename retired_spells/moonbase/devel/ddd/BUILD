(

  cd ddd                                                    &&
  patch -p0 < $SCRIPT_DIRECTORY/ddd-3.3.1-gcc3-gentoo.patch &&
  cd $SOURCE_DIRECTORY                                      &&
  default_build                                             &&

  if module_installed Python; then
    cp  pydb/Notes    /usr/share/ddd   &&
    cp  pydb/pydb.py  /usr/bin/pydb    &&
    cp  pydb/pydbcmd.py pydb/pydbsupt.py  /usr/lib/python2.2/site-packages
  fi

) > $C_FIFO 2>&1
