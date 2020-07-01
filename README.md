
# STUDENT PROJECT [P3] - **DOCKER**

![Debian](https://img.shields.io/badge/Debian-Stable-blue.svg)
![Docker](https://img.shields.io/badge/Docker-19-blue.svg)
![Nginx](https://img.shields.io/badge/Nginx-Latest-blue.svg)
![Supervisor](https://img.shields.io/badge/Supervisor-Latest-blue.svg)
![OpenSSH](https://img.shields.io/badge/OpenSSH-Latest-blue.svg)
![Licence](https://img.shields.io/badge/Licence-GPLv3-blue.svg)

> Start multiple programs in a single container with supervisor.
You can use this repository if you must have multiple processes in a single container and you need coordination between them. For other cases, use one Docker for one service.

## REQUIREMENTS
- Docker v19+

## GETTING STARTED

1 - Clone this repository on your computer with SSH or HTTP :
```shell
git clone git@github.com:GuillaumeSadlerOC/DevOps_Docker.git
```

2 - Create an Docker image by entering the command in the folder named "DevOps_Docker"
```shell
sudo docker build -t supervisor_nginx_sshd .
```

3 - Build and launch the container with this command line :
```shell
sudo docker run -d -p 80:80 --name sshd_docker supervisor_nginx_sshd
```

4 - Yoy can see the famous "Welcome to nginx!" in your browser to 127.0.0.1:80

5 - You can connect to docker container with ssh :
```shell
ssh root@[DOCKER IP]
```

For known Docker IP, you can enter this command line : 
```shell
sudo docker inspect sshd_docker
```
BY example : "IPAddress": "172.17.0.2",


## Change default port
You can change the port by default fixed to 80:80 !

**If you want change the local port**, you have just to
change the first 80 value to your custom local port, by example :
```shell
sudo docker run -d -p 8080:80 debian-nginx-image
```

**If you want change the docker container port**, you must 
change the second 80 value to your custom docker container port, by example :
```shell
sudo docker run -d -p 80:8080 debian-nginx-image
```
**AND** you must change the value of EXPOSE line in the Dockerfile
``` shell
EXPOSE 80 # Your custom port here
```
