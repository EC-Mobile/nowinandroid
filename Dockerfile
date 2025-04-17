FROM docker.io/mingc/android-build-box:latest

WORKDIR /app

USER root

COPY . .

CMD ["./docker-entrypoint.sh"]