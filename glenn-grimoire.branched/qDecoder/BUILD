(

  default_build                       &&
  mkdir -p /usr/doc/$SPELL            &&
  cp -R rfc REFERENCE /usr/doc/$SPELL &&
  mkdir -p /usr/share/$SPELL          &&
  cp -R examples/Makefile examples/*.c /usr/share/$SPELL &&
  mkdir -p /usr/share/$SPELL/qValue-1.0.2 &&
  cp -R contrib/qValue-1.0.2/{Makefile,README,ex*,qV*.c} /usr/share/$SPELL/qValue-1.0.2

) > $C_FIFO 2>&1