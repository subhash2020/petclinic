# Steps to Deploy petclinic application

# Prerequisites

# Jenkins server with git,docker and kubectl installed
# Dockerhub configured to push docker image to dockerhub
# jenkins server should have kubeconfig available to interact with HA kubernetes cluster
# HA kubernetes cluster should have nginx-ingress controller configured using helm
# Configure DNS for Loadbalancer IP
# To user mysql database comment the H2 config in pom.xml file

#Pipeline View
#Git clone---> Build with maven ---> create image using Dockerfile--> push image to dockerhub --> Deploy the application using deployment,service and ingress on kubernetes cluster

