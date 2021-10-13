FROM mcr.microsoft.com/dotnet/runtime:5.0.9-alpine3.13-arm32v7
COPY --from=registry.uipath.com/robot/runtime /root/application /root/application
RUN apk update && apk add grep

#You need to add rootCA.crt certificate from Orchestrator to this directory before running "docker build"
ADD rootCA.crt /usr/local/share/ca-certificates/uipath.crt

RUN chmod 644 /usr/local/share/ca-certificates/uipath.crt && /usr/sbin/update-ca-certificates
ENTRYPOINT ["/root/application/startup.sh"]
