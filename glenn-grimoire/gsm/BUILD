# This spell released under the terms of the GNU General Public License
# as they appear in http://www.gnu.org/licenses/gpl.txt
  patch -p0 < $SCRIPT_DIR/gsm-1.0.10.patch &&
  make                                     &&
  prepare_install                          &&
  make install                             &&
  mkdir -p /usr/doc/$SPELL                 &&
  cp ChangeLog* INSTALL README /usr/doc/$SPELL
