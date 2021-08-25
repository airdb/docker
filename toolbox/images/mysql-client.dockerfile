FROM  airdb/alpine
RUN apk add --no-cache mysql-client
ENTRYPOINT ["mysql"]
