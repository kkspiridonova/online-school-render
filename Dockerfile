FROM eclipse-temurin:17-jre
WORKDIR /app
COPY OnlineSchoolKursach-0.0.1-SNAPSHOT.jar app.jar
COPY application-render.yaml application-render.yaml
ENV SPRING_CONFIG_LOCATION=application-render.yamlCOPY application-render.yaml application-render.yaml
ENV SPRING_CONFIG_LOCATION=application-render.yaml
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]