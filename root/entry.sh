#!/bin/bash

/usr/bin/syncthing &
/usr/lib/frr/frrinit.sh start

while true
do
  echo $(date -u) "tinc staring..." >> /tmp/tinc.log
  /usr/sbin/tincd -D -n xfr 
  echo $(date -u) "tinc stopped..." >> /tmp/tinc.log
  sleep 1
  
done

/usr/bin/tail -f /dev/null
