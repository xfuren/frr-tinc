#!/bin/bash

/bin/syncthing &
/etc/init.d/frr start

while true
do
  /usr/sbin/tincd -D -n xfr 
  sleep 9
done

/usr/bin/tail -f /dev/null
