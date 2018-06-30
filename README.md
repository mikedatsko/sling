## Pre-build

run `sh build.sh 1` to build containers with jmeter 4.0, grafana and 1 slave for jmeter

## Run tests

Add `*.jmx` templates to scripts dir

run `sh run.sh` start builds

results will be saved to a new directory `results` grouped by date

## Destroy

run `sh destroy.sh`
