FROM mcr.microsoft.com/dotnet/runtime:5.0.9-alpine3.13-arm32v7
COPY --from=registry.uipath.com/robot/runtime /root/application /root/application
RUN apk update && apk add grep
ENTRYPOINT ["/root/application/startup.sh"]
