#!/bin/bash

SLAVE_IP=$(docker inspect -f '{{.Name}} {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq) | grep slave | awk -F' ' '{print $2}' | tr '\n' ',' | sed 's/.$//')
WDIR=`docker exec -it jmeter-master /bin/pwd | tr -d '\r'`
rm -rf results
mkdir -p results
filename="scripts/performance.jmx"
echo $filename
NAME=$(basename $filename)
echo $NAME
NAME="${NAME%.*}"
echo $NAME
eval "docker cp $filename jmeter-master:$WDIR/scripts/"
eval "docker exec -it jmeter-master /bin/bash -c 'rm -rf $NAME && mkdir $NAME && cd $NAME && ../bin/jmeter -n -t ../$filename -l $WDIR/$NAME/report.jtl'"
eval "docker cp jmeter-master:$WDIR/$NAME results/"
