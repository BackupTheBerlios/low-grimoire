# This spell released under the terms of the GNU General Public License
# as they appear in http://www.gnu.org/licenses/gpl.txt
  TK=$(echo -n $(augur version tk) | cut -d . --f=1,2)
  TCL=$(echo -n $(augur version tcl) | cut -d . --f=1,2)

  patch -p0 < $SCRIPT_DIR/Makefile.patch    &&
  sed -i "s:ltk:ltk$TK:" Makefile &&
  sed -i "s:ltcl:ltcl$TCL:" Makefile &&
  sed -i "s:local/WordNet-2.0/dict:share/dict:" src/include/wnconsts.h &&
  sed -i "s:local/WordNet-2.0/bin:bin:" src/include/wnconsts.h &&
  prepare_install             &&
  make SrcWorld               
