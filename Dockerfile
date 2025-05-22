FROM amazoncorretto:17-alpine

WORKDIR /app

COPY /build/libs/*.jar app.jar

ENV JAVA_OPS="-Xms512m -Xmx512m"
ENV SERVER_PORT=8080

EXPOSE 8080

ENTRYPOINT ["sh", "-c", "java ${JAVA_OPS} -jar app.jar"]
