(
  sedit "s:LFLAGS:LDFLAGS:g" src/Makefile           || exit 1
  
  # lets add KDEDIR var to enviro, if it is not defined AND if kdebase3
  # is installed  

  module_installed kdebase3 && 
  [ -z "$KDEDIR" ]          && 
  export KDEDIR=/opt/lunar/kde/3
  
  # lets add kde and gnome menu support to the build, iff
  # there is a gnome-config avail :=)
  # the support maybe set to on/off via preferences

  which gnome-config 2>/dev/null >/dev/null && 
  OPTS=$OPTS" --with-gnome-menus --with-icesound=oss,esd"

  # here are some options :=) with anti-aliasing support  
  OPTS=$OPTS" --with-docdir=/usr/share/doc --enable-nls \
  --disable-debug --enable-movesize-fx --enable-i18n \
  --enable-gradients --enable-shaped-decorations \
  --enable-guievents --enable-xfreetype --enable-antialiasing"

#lets default build the beast 
  default_build

) > $C_FIFO 2>&1
