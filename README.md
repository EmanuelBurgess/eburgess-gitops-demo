# Welcome to my GCP/Gitops Demo!


This is a demo repo that leverages GCP to deliver a simple mvp gitops example.

<https://github.com/EmanuelBurgess/eburgess-gitops-demo/blob/eb3e1cfba165ebca5c00585d37d1d434d0df3abe/images/gcpgitopsdemo.pdf>

## Features

- Automatically build a compute instance
- Automatically create a firewall rule to allow traffic to that instance
- Automatically set up monitoring and alerting
- Autoconfigure a custom webpage
- Automatically build branch specific enviroments and manage state


## Tech

Dillinger uses a number of open source projects to work properly:

- [Terraform] - IAC Tool
- [CloudBuild] - GCP Build Tool
- [Docker] - Docker is an open platform for developing, shipping, and running applications.
- [Bash] - Bash is the shell, or command language interpreter, for the GNU operating system. 
- [Apache] - Apache is an open-source and free web server software
- [Yaml] - YAML is a digestible data serialization language that is often utilized to create configuration files
- [GCP-Secrect-Manager] - Secret Manager is a secure and convenient storage system for API keys, passwords, certificates, and other sensitive data
- [GCP-Compute-Engine] - Compute Engine is a computing and hosting service that lets you create and run virtual machines on Google infrastructure.
- [GCP-Firewall] - GCP firewall is a network security device that monitors incoming and outgoing network traffic and permits or blocks data packets based on a set of security rules..
- [GCP-Cloud-Storage] - Google Cloud Storage is a RESTful online file storage web service for storing and accessing data on Google Cloud Platform infrastructure.
- [Git] - Git is a free and open source distributed version control system.
- [DockerHub] - Docker Hub is a service provided by Docker for finding and sharing container images with your team.


[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [Terraform]: <https://www.terraform.io/>
   [CloudBuild]: <https://cloud.google.com/build/>
   [Docker]: <https://www.docker.com/>
   [Bash]: <https://www.gnu.org/software/bash/>
   [Apache]: <https://httpd.apache.org/>
   [Yaml]: <https://yaml.org/>
   [GCP-Secrect-Manager]: <https://cloud.google.com/secret-manager/>
   [GCP-Compute-Engine]: <https://cloud.google.com/compute/>
   [GCP-Firewall]: <https://cloud.google.com/vpc/docs/using-firewalls/>
   [GCP-Cloud-Storage]: <https://cloud.google.com/storage/>
   [Git]: <https://git-scm.com/>
   [DockerHub]: <https://hub.docker.com/>