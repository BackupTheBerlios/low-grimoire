#!/bin/bash
#

# See how we were called.
spampid=`pidof -o %PPID /usr/bin/spamd` 
case "$1" in
  start)
	echo "starting spamd"
	spamd -d	
	sleep 3
	echo $spampid > /var/run/spamd.pid
	;;
  stop)
        
	if [ ! -z $spampid ]; then
                echo "Stopping spamd ..."
  		kill  -15  $spampid
  		rm    -f   /var/run/spam.pid
  		echo  "done."
        elif [ -z $spampid ]; then
		echo "spamd not running"
	fi
	;;

  restart|reload)

	$0 stop
	$0 start
	;;

  status)
        echo -n "spamd is "
        if [ -z "$spampid" ]; then
          echo -n "not "
        fi
	echo "running."
        ;;
  *)
        echo "Usage: spamd {start|stop|restart|status}"
        exit 1
esac

exit 0

