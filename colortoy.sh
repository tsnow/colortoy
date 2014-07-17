#!/usr/bin/env bash
jobname=`uuidgen`
cat /dev/fd/0>/tmp/$jobname
./colortoy.rb /tmp/$jobname 4