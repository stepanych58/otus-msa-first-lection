# Используем официальный образ OpenJDK для AMD64
FROM eclipse-temurin:24

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем собранный JAR-файл (предполагается, что он называется app.jar)
# Замените 'target/your-spring-app.jar' на актуальный путь к вашему JAR-файлу
COPY build/libs/*.jar app.jar

# Открываем порт, на котором работает Spring Boot приложение
EXPOSE 8000

# Команда для запуска приложения
ENTRYPOINT ["java", "-jar", "app.jar"]