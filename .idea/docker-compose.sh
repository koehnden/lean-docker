# docker-compose is a separate client:
#	1. that make it easier to run muliple docker commands at once 
# 	2. to enable portless communication between different docker files
# Command to run are specified in a docker-compose.yml file in the current directory

# to run containers
docker-compose up

# to build and run containers
docker-compose up --build

# stop all running containers
docker-compose down

# list a running container in the current directory 
# specified in the docker-compose.yml file
docker-compose ps
