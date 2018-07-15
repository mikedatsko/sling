FROM grafana/grafana:latest

EXPOSE 3000

ENV GF_SERVER_ROOT_URL http://127.0.0.1
ENV GF_INSTALL_PLUGINS grafana-clock-panel,briangann-gauge-panel,natel-plotly-panel,grafana-simple-json-datasource
ENV GF_AUTH_ANONYMOUS_ENABLED true
ENV GF_USERS_DEFAULT_THEME light

#COPY . /grafana

#CMD /bin/bash -c 'echo "Wait 30 seconds while grafana starts" \
#  && sleep 30 \
#  && echo "add grafana datasource" \
#  && cd /grafana \
#  && curl --user admin:admin -d @influxdb-source.json -H "Content-Type: application/json" -X POST "http://127.0.0.1:3000/api/datasources" \
#  && echo "add jmeter influxdb dashboard" \
#  && curl --user admin:admin -d @jmeter-influxdb-dashboard.json -H "Content-Type: application/json" -X POST "http://127.0.0.1:3000/api/dashboards/import" \
#  && echo "grafana datasource and dashboard were successfully added" \
#  && sleep infinity'


