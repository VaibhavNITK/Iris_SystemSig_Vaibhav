Task2
Launch the application in a docker container. Launch a separate container for the database and ensure that the two containers are able to connect.
The DB port should not be exposed to the host or external network. It must be internal to the docker network only.
Expose the application port to the host machine at 8080. So you should be able to access the app at “localhost:8080”.

First we will dockerize the database

:) Create a Dockerfile for the database container

:) Use a MySQL image as the base image

:) Set the database password as an environment variable

:) Expose the default MySQL port (3306) to the Docker network only

:) Set the default command to start the MySQL server

Now we create a docker network

:) Create a Docker network for the application and database containers to communicate with each other

:) This ensures that the database container is only accessible from within the Docker network, and not from the host machine or external network
