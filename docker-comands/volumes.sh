# Volumes are useful to put code changes to the image without
# having to rebuild the docker container
# The -v flag create a reference to file outside of the docker container
docker run -p 3000:300 -v /app/node_modules -v $(pwd):app <image id>s

# this long and confusion command can be simplified using docker-compose
# see frontend/docker-compose.yml as an example