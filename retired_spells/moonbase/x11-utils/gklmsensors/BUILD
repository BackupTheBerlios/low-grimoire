(
  
  make &&
  prepare_install &&
  if [ ! -d /usr/lib/gkrellm ]; then
       mkdir /usr/lib/gkrellm;
  fi;
  if [ ! -d /usr/lib/gkrellm/plugins ]; then
       mkdir /usr/lib/gkrellm/plugins;
  fi;
  cp sensors.so /usr/lib/gkrellm/plugins
		      
 
) > $C_FIFO 2>&1
