(
  sed -i "s|<slist>|<backward/slist.h>|" `find`
  sed -i "s|std::slist|slist|" `find`
  sed -i "s|<hash_map>|<backward/hash_map.h>|" `find`
  sed -i "s|std::hash_map|hash_map|" `find`
#  sed -i "s:-fno-rtti:-fno-rtti -Idummy:" Makefile.Linux
  
  make -f Makefile.Linux      &&
  prepare_install             &&
  make    install  PREFIX=/usr

) > $C_FIFO 2>&1