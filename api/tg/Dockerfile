FROM ubuntu
COPY . .
RUN apt-get update && apt-get install --no-install-recommends -y\
	openjdk-11-jdk  && \
    ./mvnw package
EXPOSE 8080
CMD ["java","-jar","target/code-with-quarkus-1.0.0-SNAPSHOT-runner.jar"]
