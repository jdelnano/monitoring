## Minimal Monitoring Stack

A docker-compose setup for a minimal monitoring stack
=============================

To launch the mini stack:

`./launch_monitoring.sh`

This will launch:
1. prometheus (port 9090)
2. grafana (port 3000)
3. alertmanager (port 9093)

## Check or Edit/Apply New Prometheus Config

Check config
`promtool check config /etc/prometheus/prometheus.yml`

Apply new config
`docker restart prom`

## Troubleshooting

If you're prometheus/grafana containers crash instantly, check the permissions on the directories/files volume mounts.
Prom should have `65534:65534` ownership, while Graf should have `472:472` ownership
