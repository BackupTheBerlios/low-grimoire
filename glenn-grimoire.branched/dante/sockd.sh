#!/bin/sh

case $1 in
     start)  echo -n "$1ing Dante sockd server."
                          sockd -D -f /etc/sockd.conf > /dev/nul
			  if eval "pgrep -P 1 -f \"^sockd -D -f /etc/sockd.conf\"" > /dev/nul ; then
			    echo " done"
			  else
			    echo " failed"
			  fi
                          ;;
     stop)  echo -n "$1ping Dante sockd server."
                          pkill -P 1 -f "^sockd -D -f /etc/sockd.conf"
			  echo " done"
                          ;;
     restart)  $0 stop && $0 start
                          ;;
                      *)  echo      "Usage: $0 {start|stop|restart}"
                          ;;
esac
