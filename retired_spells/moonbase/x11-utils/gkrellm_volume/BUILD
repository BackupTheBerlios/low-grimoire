(

if [ ! -e /usr/lib/gkrellm2/plugins ]; then
   mkdir -p /usr/lib/gkrellm2/plugins
fi                                                           &&
cat $SCRIPT_DIRECTORY/gkrellm-volume-path.patch | patch -p1  &&
make                                                         &&
prepare_install                                              &&
make  install

  ) > $C_FIFO 2>&1

