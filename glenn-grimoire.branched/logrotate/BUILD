(
  sed -i "s:CFLAGS += -g:CFLAGS += -g ${CFLAGS}:" Makefile

  make               &&
  prepare_install    &&
  make    install    &&
  mkdir -p /etc/logrotate.d  &&
  mkdir -p /etc/cron.daily   &&
  mkdir -p /var/lib          &&
  mkdir -p /usr/share/$SPELL &&
  cp -R examples /usr/share/$SPELL &&
  cp -R test /usr/share/$SPELL &&
  install -m 644 examples/logrotate-default /etc/logrotate.conf    &&
  install -m 755 examples/logrotate.cron /etc/cron.daily/logrotate &&
  touch /var/lib/logrotate.status

) > $C_FIFO 2>&1
