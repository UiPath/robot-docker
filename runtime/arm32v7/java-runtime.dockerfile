FROM mcr.microsoft.com/dotnet/runtime:5.0.9-alpine3.13-arm32v7
COPY --from=registry.uipath.com/robot/runtime /root/application /root/application
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories \
	&& apk update
RUN apk add openjdk16-jre
RUN pk add grep
ENTRYPOINT ["/root/application/startup.sh"]
