FROM eclipse-temurin:17-jre
WORKDIR /app
COPY OnlineSchoolKursach.jar app.jar
COPY application-render.yaml application-render.yaml
ENV SPRING_CONFIG_LOCATION=application-render.yaml
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]