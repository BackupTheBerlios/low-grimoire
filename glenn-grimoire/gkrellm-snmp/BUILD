(
  patch  -p0  <  $SCRIPT_DIR/gkrellm_snmp-0.18-bigpatch.patch &&
  sed -i "s:/usr/share/gkrellm/plugins:/usr/lib/gkrellm/plugins:" Makefile &&
  make                                   &&
  prepare_install                        &&
  make install                           
  
) > $C_FIFO 2>&1