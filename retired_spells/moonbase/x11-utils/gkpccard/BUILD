(

  cd  $SOURCE_DIRECTORY                                       && 
  ./build_gkPCcard                                            &&
  prepare_install                                             &&
  cp -f gkPCcard.so /usr/share/gkrellm/plugins/               &&
  echo "gkPCcard.so installed in /usr/share/gkrellm/plugins/"

) > $C_FIFO 2>&1
