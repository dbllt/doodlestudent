FROM ubuntu
COPY . .
RUN apt-get update && apt-get install --no-install-recommends -y\
	openjdk-11-jdk
RUN ./mvnw package -Dmaven.test.skip=true 
EXPOSE 8080
CMD ["java","-jar","target/tlcdemoApp-1.0.0-SNAPSHOT-runner.jar"]

