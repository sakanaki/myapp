FROM eclipse-temurin:17-jre
COPY /target/myapp-0.0.1-SNAPSHOT.jar /home/ubuntu/myapp-0.0.1-SNAPSHOT.jar
WORKDIR /home/ubuntu
RUN sh -c 'touch myapp-0.0.1-SNAPSHOT.jar'
ENTRYPOINT ["java","-Xms128m", "-Xmx256m","-XX:+ExitOnOutOfMemoryError","-Dspring.profiles.active=dev", "-jar", "myapp-0.0.1-SNAPSHOT.jar"]
