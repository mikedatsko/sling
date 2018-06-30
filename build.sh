#!/bin/bash

mkdir -p data
docker build -t jmeter-base jmeter-base
docker-compose build && docker-compose up -d && docker-compose scale master=1 slave=$1

sleep 30

# add grafana datasource and dashboards

curl --user admin:admin -d @grafana/influxdb-source.json -H "Content-Type: application/json" -X POST "http://127.0.0.1:9001/api/datasources"
curl --user admin:admin -d @grafana/jmeter-dashboard.json -H "Content-Type: application/json" -X POST "http://127.0.0.1:9001/api/dashboards/import"
curl --user admin:admin -d @grafana/influxdb-metrics.json -H "Content-Type: application/json" -X POST "http://127.0.0.1:9001/api/dashboards/import"
