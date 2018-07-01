#!/bin/bash

mkdir -p data
docker build -t jmeter-base jmeter-base grafana influxdb chronograf kapacitor
docker-compose build && docker-compose up -d && docker-compose scale master=1 slave=$1


echo "Wait 30 seconds while grafana starts"

sleep 30

echo "add grafana datasource and dashboards"

curl --user admin:admin -d @grafana/influxdb-source.json -H "Content-Type: application/json" -X POST "http://127.0.0.1:9001/api/datasources"
curl --user admin:admin -d @grafana/jmeter-influxdb-dashboard.json -H "Content-Type: application/json" -X POST "http://127.0.0.1:9001/api/dashboards/import"

