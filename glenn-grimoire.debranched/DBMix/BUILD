# This spell released under the terms of the GNU General Public License
# as they appear in http://www.gnu.org/licenses/gpl.txt
  # This assumes that sed is invoked with -r, if not good luck
  ./configure --prefix=/usr   \
              $OPTS           &&
  sed -r -i "s:^LDFLAGS = :LDFLAGS = -L\\.\\./dbaudiolib/\\.libs:" dbfsd_src/Makefile &&
  sed -r -i "s:^LDFLAGS = :LDFLAGS = -L\\.\\./dbaudiolib/\\.libs:" xmms_plugin/Makefile &&
  read &&
  patch -p0 < $SCRIPT_DIR/DBMix-0.9.8.diff &&
  make                        &&
  prepare_install             &&
  make    install  prefix=/usr
