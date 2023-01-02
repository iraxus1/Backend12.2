docker compose -f services/fluentd/docker-compose.yml up -d
docker compose -f services/numbers/docker-compose.yml up -d
#wait for connect
sleep 20
docker container start numbers-web
docker container start numbers-api