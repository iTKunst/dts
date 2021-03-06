h1. *Docker Overview*

Docker is an Open source container technology.  It is used to simplify and accelerate development and deployment.

The CVMS system has been organized into various containers 


h2. *Introduction*

A Docker container is similar to a virtual machine in many ways.  They contain an operating system with some limited functionality.  Typically containers are based on a flavor of linux, but some do run windows and other Unix flavors.  A docker container does not require a lot of resources.  One can allocate the amount of memory and the percentage of the cpu it uses. 

Docker containers are very beneficial because one can run many applications and tools without having to modify ones own machine.  This means that one can start up a dev environment or a service with very little preparation.  All one has to do is ensure that one has docker installed.

Because the containers are 'self-contained', it is very easy to ensure that environments are consistent across platforms and users.  For example, if an application requires java 8, it can be baked into the container  of the application.  One does not need to ensure that one has installed and enabled java 8 on ones machine.  This typically saves a lot of time debugging and fixing issues that are created by not having the correct version of tools, or the correct environment settings.


h2. *Dockerfiles*

There are various ways that one can create a docker container.  One can create a Dockerfile that has commands and variables that control how the component starts and runs.  Typically one creates a Dockerfile for each component of a system.  

Once one has created a docker file, one can use docker to build an image ie:.
<pre>
docker build -name app_img
</pre>


Intermediate steps can be run during the build of a docker file.  One specifies these steps with the RUN command 
<pre>
RUN cp pom.xml pom.xml
</pre>

One may hardcode all variable values and paths in a docker file, unfortunately this does not allow for ease of re-use.  Fortunately, docker provides the concept of 'ARGS' to resolve this issue. In the docker file one can define an ARG:
<pre>
ARG HOME_APP=/opt/postgresql
</pre>

This tells docker that the variable HOME_APP exists and its default value is '/opt/postgresql'.  When one issues the build command, this default value may be overwritten ie.:
<pre>
docker build --build-arg HOME_APP=/opt/mysql -name app_img
</pre> 


h2. *Images*

Images are to docker what 'classes' are to OOP.  They contain all of the information and logic that is required to start and run a container. In order to start a container, one calls docker run:
<pre>
docker run -d -name app_cont app_img
</pre> 
This command uses the image 'app_img' to create and start the container 'app_cont'.  If no name is provided, docker generates a random name for the container.

One can view images available by running:
<pre>
docker image ls
</pre>

One can delete an image by running:
<pre>
docker rmi <image_name>
</pre>

h2. *Containers*

Containers are instances of an image. 

h2. *Intellij IDEA Docker Plugin*


A docker plugin is provided for the Intellij IDEA IDE. It allows one to:
# view and delete images and containers. 
# Start and stop containers. 
# Inspect containers
# View directory in container

h2. *Orchestrators*

Setting up a docker container for developing a simple application or component is in itself very useful. However it can even be more useful when the system is large and complex.  There exist various 'orchestrators' that can be used to simply and easily start up and monitor such a complex system.  

Orchestrators can be programmed to ensure that a specific number of instances of a specific component are always up and running.  It can also be programmed to monitor load on specific components and react accordingly - either by shutting down unused instances, or by starting up more instances.  This ensures that the amount of resources used are commiserate with the requirement - thus ensuring that costs are at a minimum.

Orchestrators are fairly resource intensive.  They typically requires at three or more decently powered servers. 

h3. *Docker-compose*

Docker-compose is a very light weight orchestrator. It is limited in functionality.  It does allown one to easily link containers together and define dependancies.  It is a great tool for local development and does not require significant resources.
 
h3. *Kubernetes*

Kubernetes is a very powerful orchestrator.  It is one of the first orchestrators.  Its interface is command line driven and it can take some time to master.

h3. *Openshift (Red Hat)*

Openshift is not open source.  It is created by Red Hat and is built on top of kubernetes.  It is designed to simplify Kubernetes.  It has a very well designed GUI interface and it is quite intuitive.  It also has many plugin functionality

h3. *Joyent (Triton)*

Joyent is open source.  It is created by Joyent and is built on top of kubernetes.  It is designed to simplify Kubernetes.  It has a very well designed GUI interface and it is quite intuitive.  It also has many plugin functionality.

  



