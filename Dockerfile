#RUN ./create-package.sh
FROM openjdk:11
VOLUME /tmp
ADD target/gateway-0.0.1-SNAPSHOT.jar gateway-0.0.1-SNAPSHOT.jar
EXPOSE 8090
ENTRYPOINT ["java","-jar","gateway-0.0.1-SNAPSHOT.jar", "-Dspring.profiles.active=prod"]