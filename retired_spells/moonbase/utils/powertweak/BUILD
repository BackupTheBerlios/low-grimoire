(

  sedit "s/parser\.h/libxml\/parser\.h/" src/libpowertweak/profile.c src/backends/proc/xml.c src/backends/CPU/x86/xml.c src/backends/PCI/xml.c
  sedit "s/tree\.h/libxml\/tree\.h/" src/backends/proc/proctweaks.c src/include/libxmlcompat.h src/backends/PCI/pcitweaks.c src/backends/CPU/x86/cputweaks.c

  default_build

) > $C_FIFO 2>&1
