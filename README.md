# UiPath Robot dockerfile examples

This repository shows various ways to use the UiPath Robot in conjunction with Docker containers. 

These examples show you how to build a docker container with the UiPath Robot and Java or Python environment, or how can you use a self-signed certificate with your UiPath Orchestrator instance.
To build one of these images just use ```docker build``` command.

For Java runtime run:

```docker build -t robot-java-runtime -f runtime/amd64/java-runtime.dockerfile .```

For Python runtime run:

```docker build -t robot-python-runtime -f runtime/amd64/python-runtime.dockerfile .```

To build the robot image with a self-signed certificate you need to copy the self-signed certificate to this folder. The name of the self signed certificate must be: ```rootCA.crt```. Then you can run:

```docker build -t robot-self-signed -f runtime/amd64/self-signed-cert.dockerfile .```
