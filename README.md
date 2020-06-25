
# STUDENT PROJECT [P3] - **DOCKER**

![Docker](https://img.shields.io/badge/Docker-19-blue.svg)
![Debian](https://img.shields.io/badge/Debian-Stable-blue.svg)
![Nginx](https://img.shields.io/badge/Nginx-Latest-blue.svg)
![Licence](https://img.shields.io/badge/Licence-GPLv3-blue.svg)

> For construct Docker image with Debian and Nginx.

## REQUIREMENTS
- Docker v19+

## GETTING STARTED

1 - Clone this repository on your computer with SSH or HTTP :
```shell
git clone git@github.com:GuillaumeSadlerOC/DevOps_Docker.git
```

2 - Create an Docker image by entering the command in the folder named "DevOps_Docker"
```shell
docker build -t debian-nginx-image .
```

3 - Build and launch the container with this command line :
```shell
docker run -d -p 80:80 debian-nginx-image
```

4 - Now, you can see the famous "Welcome to nginx!" in your browser to 127.0.0.1:80

## Change default port
You can change the port by default fixed to 80:80 !

**If you want change the local port**, you have just to
change the first 80 value to your custom local port, by example :
```shell
docker run -d -p 8080:80 debian-nginx-image
```

**If you want change the docker container port**, you must 
change the second 80 value to your custom docker container port, by example :
```shell
docker run -d -p 80:8080 debian-nginx-image
```
**AND** you must change the value of EXPOSE line in the Dockerfile
``` shell
EXPOSE 80 # Your custom port here
```
