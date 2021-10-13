FROM mcr.microsoft.com/dotnet/runtime:5.0.9-alpine3.13-arm32v7
COPY --from=registry.uipath.com/robot/runtime /root/application /root/application
RUN apk update && apk add grep
RUN apk add --no-cache --update python3
RUN ln -sf /usr/bin/python3 /usr/bin/python
RUN python -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools 
ENTRYPOINT ["/root/application/startup.sh"]
