FROM openjdk:8-alpine

ENV PORT 8081

ADD target/JrebelBrainsLicenseServerforJava-1.0-SNAPSHOT-jar-with-dependencies.jar /JrebelBrains.jar
CMD java -jar /JrebelBrains.jar -p $PORT

EXPOSE 8081


# docker network create --subnet 172.20.10.0/24 private-network
# docker run --network private-network -dp 0.0.0.0:1002:8081 --name jrebel-ser jrebel:latest

# docker inspect jrebel-ser
# docker network create skyx-network
# docker network create --subnet 172.16.50.242/24 --gateway 172.16.50.1 --driver bridge skyx-network
# docker network prune --force --filter until=5m

# VOLUME /public docker run -v /home/user/public:/public nginxN

# docker build --no-cache -t jrebel .
# docker tag jrebel winfast/jrebel:latest
# docker push winfast/jrebel:latest
# docker run -dp 0.0.0.0:1002:8081 --name jrebel-ser jrebel:latest


