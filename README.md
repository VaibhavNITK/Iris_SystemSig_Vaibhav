Task2
Launch the application in a docker container. Launch a separate container for the database and ensure that the two containers are able to connect.
The DB port should not be exposed to the host or external network. It must be internal to the docker network only.
Expose the application port to the host machine at 8080. So you should be able to access the app at “localhost:8080”.

:) Created a Dockerfile for the MySQL database container.

:) Used the official MySQL image as the base image.

:) Set the MySQL root password.

:) Create a new database and user.

:) Set the default character set and collation.

:) Expose port 3306 for the MySQL server to listen on.

:) Set the command to start the MySQL server.

Build the Docker image using the command "docker build -t mydb .".
