#!/bin/bash
#while read p; do
#	echo "$p"
#az vm start --ids $(az vm list -g $p --query "[].id" -o tsv)
#sh auto-run-custome.sh
#sleep 1
#az vm start --ids $(az vm list -g $p --query "[].id" -o tsv)
#	echo "Started Complete!!!"
#	sleep 1
#done <GroupResource.txt
#
#echo "new sesssion" > run.log
#
#echo "Next........."
set -e
for f in vmstart/*.sh; do
  bash "$f"
sleep 2
done
