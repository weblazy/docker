docker run  -d \
  -p 29090:9090 \
  -v $PWD/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml  \
  -v $PWD/prometheus/data:/data/prometheus \
  prom/prometheus