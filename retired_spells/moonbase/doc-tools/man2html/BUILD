(

  prepare_install

  cd $SOURCE_DIRECTORY                                            &&
  sedit "s/local\/bin\/perl/bin\/perl/" man.cgi                   &&
  sedit "s/usr\/local\/bin\/man2html/usr\/bin\/man2html/" man.cgi &&
  sedit "s/usr\/local\/man/usr\/local\/share\/man/"       man.cgi &&
  sedit "s/usr\/man/usr\/share\/man/"                     man.cgi &&
  sedit "s/local\/bin\/perl/bin\/perl/"                  man2html &&

  if module_installed apache; then
     if [ -d "/var/www/cgi-bin/" ]; then
        cp -f man.cgi /var/www/cgi-bin/
        chmod 0755 /var/www/cgi-bin/man.cgi
     fi
  fi                                               &&
  if module_installed apache2; then
     if [ -d "/var/www/cgi-bin/" ]; then
        cp -f man.cgi /var/www/cgi-bin/
        chmod 0755 /var/www/cgi-bin/man.cgi
     fi
  fi                                               &&
  cp -f man2html /usr/bin                          &&
  cp -f doc/man2html.1 /usr/share/man/man1

) > $C_FIFO 2>&1
