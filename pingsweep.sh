sed -i -e 's/\r$//' pingsweep.sh
#! /usr/bin/bash

if [ "$1" == "" ]
then
  echo "provide ip address"
else
for ip in `seq 1 254` ; do
  ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
