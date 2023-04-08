
Task4- Now launch two more containers of the rails application. All three containers should be able to connect to a single database container. Configure Nginx container to load balance incoming requests between the three containers.


Task5- Enable persistence for the DB data and Nginx config files so that they are available even when the containers go down.


Task6- Use docker-compose to easily bring these containers up together with a single command.


Changed the db service image to mysql:5.7 which is a supported image for MySQL.
Removed the port mapping for the db service, since we don't want to expose the database port to the host or external network.
Added the expose keyword to the web, web2, and web3 services, to make the container port available to the containers in the same network.
Changed the NGINX_PROXY_PASS environment variable in the nginx service to point to the web service on port 3000, which is where the Rails application is listening.
Added a network section with the name myapp_network to define the network used by the containers.
To launch the containers, run the command docker-compose up. This will start all the containers defined in the docker-compose.yml file and connect them to the myapp_network network.
