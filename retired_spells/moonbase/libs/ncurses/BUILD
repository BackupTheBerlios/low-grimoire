(

# ************************ WARNING *************************
# DO NOT MESS WITH THE CONFIGURE STUFF here unless you
# really know what you're doing! We chose the lib location
# specifically so we could link ncurses to bash which is 
# needed at init time! If you move it you could break your 
# system!
unset CC CXX 

set -x
  ./configure  --build=$BUILD                           \
               --prefix=/usr                            \
               --libdir=/lib                            \
               --with-normal                            \
               --with-shared                            \
               --mandir=/usr/share/man                  \
               --with-manpage-format=gzip               \
               --disable-termcap                        \
               --with-terminfo-dirs=/usr/share/terminfo \
               $OPTS                                    &&
set +x &&               
  default_make

) > $C_FIFO 2>&1
