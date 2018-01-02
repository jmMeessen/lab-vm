# Inspired from https://github.com/linuxkit/linuxkit/blob/master/projects/compose/image/Dockerfile
FROM docker/compose:1.18.0

RUN apk add --update \
    curl \
    docker \
  && mkdir -p /compose /app

WORKDIR /app

COPY waitfordocker.sh /app/
COPY load-images-and-compose.sh /app/

ENTRYPOINT ["bash","/app/waitfordocker.sh"]
CMD ["/app/load-images-and-compose.sh"]
