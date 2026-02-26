FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y openjdk-8-jre-headless && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY target/timesheet-devops-1.0.0.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
