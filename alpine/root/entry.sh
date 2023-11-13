#!/bin/bash

/usr/bin/syncthing &
/usr/lib/frr/frrinit.sh start

while true
do
  /usr/sbin/tincd -D -n xfr 
  sleep 9
done

/usr/bin/tail -f /dev/null
