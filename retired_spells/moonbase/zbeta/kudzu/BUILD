(

  make                                               &&
  prepare_install                                    &&
  make    install                                    &&
  cp -fp kudzu.init  /etc/init.d/kudzu               &&
  chkconfig --level 35  kudzu on                     &&
  mkdir -p /usr/include/kudzu/                       &&
  cp -pf *.h /usr/include/kudzu/                     &&
  cp -pf libkudzu.a libkudzu_loader.a /usr/lib/      
) > $C_FIFO 2>&1
