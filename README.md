# Pipeline Project-Spring PetClinic Sample Application

 ## About this proejct:
* This project will build Spring PetClinic Sample Application using 3 phase docker build pipline.
* Will scan the code before delivery.
* Push it to dockerhub.
* Deliver the application using Helm.
## instruction - how to run this project
1) Create a costume network for sonarqube
 ```
 docker network create sonarnet
 ```
2) Run a sonarQube server as follow
```
docker run -d --rm --name sonarqube --network sonarnet -p 0.0.0.0:9000:9000 sonarqube
```
3) Start up a jenkins server <a href="https://hub.docker.com/_/jenkins">See instruction here</a>

5) Make Sure git plugin and docker installed, also make sure to confiure your credentials to docker hub.

6) Create new pipline job, mark "GitHub project checkbox", add the following git repo https://github.com/AfikAT/Pipline-project.git under it.

8) Make sure on Pipeline to choose "pipeline script from scm", choose under scm git, add again the repo above.

9) At "Script Path" insert the following import/Jenkinsfile .

10) Once the Job configure make sure to clone the repo to your machine.

11) Run build job and it will start building the application.

12) Once the Job is completed, in your machine run the following command to start up the application you build:

```
helm install sprintapp ./springchart

```


