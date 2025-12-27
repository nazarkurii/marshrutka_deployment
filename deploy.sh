# docker stop $(docker ps -aq)
# docker rm $(docker ps -aq)
# docker rmi -f $(docker images -aq)
#comment
#comment 2
docker stop $(docker ps -q)
docker rm -f $(docker ps --all -q)
docker rmi -f $(docker images -q)
docker compose pull
docker compose up -d
docker container prune -f   
docker image prune -f
