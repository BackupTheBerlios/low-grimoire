(
  sed -i "s/#define	STRIDE_LENGTH  8/#define	STRIDE_LENGTH  8\\n#define ext2fs_sb ext2_super_block/" ./src/libsurprise/fs/ext2/mkfs.c
  
  ./configure --prefix=/usr   \
              $OPTS           &&
  make                        &&
  prepare_install             &&
  make    install

) > $C_FIFO 2>&1