#!/bin/bash

/bin/syncthing &
/etc/init.d/frr start
/usr/sbin/tinc -n xfr start
/usr/bin/tail -f /dev/null
