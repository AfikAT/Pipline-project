##Phase I - Run SonarQube Scanner(Need to run SonarQube Server before!!!)####
FROM newtmitch/sonar-scanner as sonarqube

WORKDIR /usr/src/app
COPY ["./spring-petclinic/mvnw", "./spring-petclinic/pom.xml", "./"]
COPY ./spring-petclinic/.mvn ./.mvn
COPY ./spring-petclinic/src ./src
COPY ./sonar-runner.properties /usr/lib/sonar-scanner/conf/sonar-scanner.properties
RUN sonar-scanner -Dsonar.projectBaseDir=/usr/src/app

##PhaseII - Building the artifact##
FROM openjdk:16-alpine3.13 as builder
WORKDIR /usr/src/app
COPY --from=sonarqube /usr/src/app/pom.xml ./
COPY --from=sonarqube /usr/src/app/mvnw ./
COPY --from=sonarqube /usr/src/app/.mvn ./.mvn
COPY --from=sonarqube /usr/src/app/src ./src
RUN ./mvnw package

##PhaseIII - Run application##
FROM openjdk:16-alpine3.13
WORKDIR /app/code
COPY --from=builder /usr/src/app/target/* ./
COPY --from=builder /usr/src/app/target/*.jar ./
COPY ./run_app.sh ./
CMD ["./run_app.sh"]



