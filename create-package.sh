./mvnw clean install
docker rmi -f mhbappy18/gateway &>/dev/null && echo 'Removed old container'
docker build -t mhbappy18/gateway .
#docker push mhbappy18/gateway
