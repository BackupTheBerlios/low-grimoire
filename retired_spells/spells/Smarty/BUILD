(

  prepare_install  &&
  mkdir -p /usr/lib/php/Smarty      
  for i in 'find libs/. -type f -maxdepth 1';do {install $i /usr/lib/php/Smarty/ }; done 
  mkdir -p /usr/lib/php/Smarty/plugins
  install libs/plugins/* /usr/lib/php/Smarty/plugins
    
) > $C_FIFO 2>&1
