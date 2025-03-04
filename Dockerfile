# Usa una imagen base (por ejemplo, OpenJDK para una aplicación Java)
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de tu proyecto al contenedor
COPY target/*.jar app.jar

# Ejecuta la aplicación cuando el contenedor se inicia
ENTRYPOINT ["java", "-jar", "app.jar"]
