(
sedit "s:/usr/local/info:/usr/share/info:" config.h 	&&
sedit "s:/home/cad/lib/pcb:/usr/lib/pcb:" config.h 	&&
sedit "s:GNUM4 = /usr/local/bin/m4:GNUM4 = /usr/bin/m4:" config.h	&&
sedit "s:ComplexProgramTarget(pcb):ComplexProgramTargetNoMan(pcb):" src/Imakefile	&&
xmkmf -a		&&
cd doc			&&
make			&&
cd ../src		&&
make Pcb.ad		&&
cd ..			&&
make			&&
prepare_install		&&
make install		&&
make install.man	&&
make install.info
) > $C_FIFO 2>&1
