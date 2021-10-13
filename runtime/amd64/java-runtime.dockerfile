FROM registry.uipath.com/robot/runtime
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories \
	&& apk update
RUN apk add openjdk16-jre
ENTRYPOINT ["/root/application/startup.sh"]
