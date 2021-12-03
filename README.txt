Php:
1. docker build -t php_docker_image .
2. docker image ls
3. docker run -d -p 8080:8080 --name container_php php_docker_image


Mysql:
1. docker build -t mysql_docker_image ./mysql
2. docker image ls
3. docker run -d -p 3306:3306 --name container_mysql mysql_docker_image
4. docker container ls

1. docker container rm container_php
2. docker container rm container_mysql


docker network create -d bridge docker_bridge

1. docker run -d -p 8080:8080 --name container_php --network docker_bridge php_docker_image
2. docker run -d -p 3306:3306 --name container_mysql --network docker_bridge mysql_docker_image

http://localhost:8080
