FROM registry.uipath.com/robot/runtime

#You need to add rootCA.crt certificate from Orchestrator to root directory before running "docker build"
ADD rootCA.crt /usr/local/share/ca-certificates/uipath.crt
RUN chmod 644 /usr/local/share/ca-certificates/uipath.crt && /usr/sbin/update-ca-certificates
ENTRYPOINT ["/root/application/startup.sh"]