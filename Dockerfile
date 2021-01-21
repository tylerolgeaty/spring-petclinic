FROM adoptopenjdk:11-jdk-hotspot
COPY src/main/docker/wait-for-it.sh .
RUN chmod 744 wait-for-it.sh
ARG JAR_FILE=target/spring-petclinic*.jar
COPY ${JAR_FILE} /opt/app/spring-petclinic.jar
CMD ["java", "-jar", "/opt/app/spring-petclinic.jar"]