FROM nimlang/nim:alpine

COPY src/ /app/

WORKDIR /app/

RUN nimble install prologue -y

RUN nimble install karax -y

EXPOSE 8080/tcp

cmd ["/root/.nimble/bin/logue", "run"]