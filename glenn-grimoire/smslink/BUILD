# This spell released under the terms of the GNU General Public License
# as they appear in http://www.gnu.org/licenses/gpl.txt
make_docs() {
  mkdir -p doc               &&
  mkdir -p doc/client        &&
  mkdir -p doc/server        &&
  cp CHANGELOG FAQ INSTALL README* doc &&
  cp client/INSTALL doc/client         &&
  cp server/{GW-INSTALL,INSTALL} doc/server
}

  if [ "$VERSION" == "0.48b" ]; then
    patch  -p0  <  $SCRIPT_DIR/smslink-0.48b.patch
  fi
  
  sed -i "s:SQL = :#SQL = :" server/Makefile &&
  make                                   &&
  prepare_install                        &&
  make install PREFIX=/usr               &&
  make_docs                              &&
  mkdir -p /usr/share/$SPELL             &&
  mkdir -p /usr/share/$SPELL/server      &&
  cp -R varia contrib /usr/share/$SPELL  &&
  cp server/{gsmaccess,gsmcaps,gsmdbtab,gsmdevices} /usr/share/$SPELL/server
