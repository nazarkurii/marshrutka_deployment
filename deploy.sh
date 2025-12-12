# docker stop $(docker ps -aq)
# docker rm $(docker ps -aq)
# docker rmi -f $(docker images -aq)
docker stop $(docker ps -q)
docker rm -f $(docker ps --all -q)
docker rmi -f $(docker images -q)
echo "Nazar3233" | docker login --username marshrutka --password-stdin
docker compose pull
docker compose up -d
docker container prune -f   
docker image prune -f