FROM openjdk:8-alpine

ENV PORT 8081

ADD target/JrebelBrainsLicenseServerforJava-1.0-SNAPSHOT-jar-with-dependencies.jar /JrebelBrains.jar
CMD java -jar /JrebelBrains.jar -p $PORT

EXPOSE 8081

# docker build -t jrebel-image .
# docker run -dp 0.0.0.0:11111:8081 --name jrebel-ser jrebel-image

# docker inspect jrebel-ser



# docker network create skyx-network
#  docker run --network skyx-network -dp 172.16.50.241:11111:8081 --name jrebel-ser jrebel-image

# docker network create --subnet 172.16.50.242/24 --gateway 172.16.50.1 --driver bridge skyx-network

# docker network prune --force --filter until=5m

# VOLUME /public docker run -v /home/user/public:/public nginx
