# This spell released under the terms of the GNU General Public License
# as they appear in http://www.gnu.org/licenses/gpl.txt
  patch  -p0  <  $SCRIPT_DIR/gkrellm_snmp-0.18-bigpatch.patch &&
  sed -i "s:/usr/share/gkrellm/plugins:/usr/lib/gkrellm/plugins:" Makefile &&
  make                                   &&
  prepare_install                        &&
  make install                           
