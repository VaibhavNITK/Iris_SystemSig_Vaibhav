Task3
Launch an Nginx container, and configure it as a reverse proxy to the rails application. Expose it at port 8080 on localhost. So now the rails application shouldn’t be accessed directly. All requests will go through Nginx.

:) Create a docker-compose.yml file in the root directory of your Rails application.
:) Define two services: one for the Rails application and one for the MySQL database.
:) Set the environment variables for the Rails service to connect to the MySQL service.
:) Map port 3000 of the Rails service to port 3000 of the host machine.
:) Map port 3306 of the MySQL service to a random port on the host machine.
:) Set the network mode to "bridge" for both services.
:) Define an Nginx service and map port 8080 of the host machine to port 80 of the Nginx service.
:) Set the network mode to "bridge" for the Nginx service.
:) Set the environment variable for the Nginx service to point to the Rails service.


Launch the Containers


- Open a terminal in the root directory of Rails application.
- Run the command "docker-compose up" to launch the containers.
- we can now access the Rails application at "http://localhost:3000".
- and can access the Nginx server at "http://localhost:8080". All requests will be forwarded to the Rails application.
