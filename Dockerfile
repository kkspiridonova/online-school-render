FROM eclipse-temurin:17-jre
WORKDIR /app

# Копируем jar в контейнер
COPY OnlineSchoolKursach-0.0.1-SNAPSHOT.jar app.jar

# Копируем конфиг
COPY application-render.yaml application-render.yaml

# Указываем Spring где искать конфиг
ENV SPRING_CONFIG_LOCATION=application-render.yaml

# Открываем порт
EXPOSE 8080

# Команда для запуска приложения
ENTRYPOINT ["java", "-jar", "app.jar"]
