FROM eclipse-temurin:17
RUN mkdir -p /mnt/uploads
WORKDIR /opt
ENV PORT 8080
EXPOSE 8080
COPY ./target/*.jar /opt/app.jar
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar
