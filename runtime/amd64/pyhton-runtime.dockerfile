FROM registry.uipath.com/robot/runtime
RUN apk add --no-cache --update python3
RUN ln -sf /usr/bin/python3 /usr/bin/python
RUN python -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools 
ENTRYPOINT ["/root/application/startup.sh"]