FROM alpine:3.11.5

RUN apk update 
RUN apk --no-cache add bind-tools busybox-extras curl wget git 
RUN apk --no-cache add mysql-client
RUN apk --no-cache add vim
RUN apk --no-cache add htop
RUN apk --no-cache add openssh tcpdump jq

CMD sleep 10000
