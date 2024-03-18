FROM maven:3.8.3-jdk-11-slim as build

COPY . /app
WORKDIR /app

RUN mvn clean package -DskipTests


FROM adoptopenjdk/openjdk11:alpine-jre as final

COPY --from=build /app/target/*.jar /app/calculator.jar

# COPY entrypoint.sh entrypoint.sh

# RUN chmod 755 entrypoint.sh

# ENTRYPOINT ["./entrypoint.sh"]
CMD ["java", "-jar", "/app/calculator.jar"]
