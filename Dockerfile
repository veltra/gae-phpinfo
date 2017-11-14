FROM google/cloud-sdk:alpine

RUN gcloud components install app-engine-php
RUN apk update && apk add php5-cgi php5-bcmath

RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY app ./

EXPOSE 8080
CMD ["dev_appserver.py", "--host", "0.0.0.0", "--php_executable_path", "/usr/bin/php-cgi", "app.yaml"]
