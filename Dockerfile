FROM debian:stable

RUN apt-get update -yq \
&& apt-get -yq upgrade \
&& apt-get -yq install nginx \
&& apt-get -yq clean

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
