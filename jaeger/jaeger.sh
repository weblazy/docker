docker run -d --name jaeger\
  -e COLLECTOR_ZIPKIN_HTTP_PORT=9411 \
  -e QUERY_BASE_PATH=/jaeger \
  -e COLLECTOR_OTLP_ENABLED=true \
  -p 5775:5775/udp \
  -p 6831:6831/udp \
  -p 6832:6832/udp \
  -p 5778:5778 \
  -p 27686:16686 \
  -p 16685:16685 \
  -p 14268:14268 \
  -p 9411:9411 \
  jaegertracing/all-in-one:1.46