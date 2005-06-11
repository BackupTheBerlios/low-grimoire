#!/bin/sh

case $1 in
     	     start)  echo   "$1ing ddclient."
                     /usr/sbin/ddclient
                     ;;
              stop)  echo   "$1ing ddclient."
                     pkill  ddclient
                     ;;
                 *)  echo   "Usage: $0 {start|stop}"
                     ;;
esac

