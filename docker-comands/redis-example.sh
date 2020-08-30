# using redis and redis-cli with docker
docker run redis  # run the redis server!

# how to use the redis-cli now?
# we can not issue command to redis like below
redis-cli # give us an error that the cli is only in the container!

# to issue command to the container user docker exec
docker ps # to get image id 
docker exec -it <image_id> redis-cli 
# -it is short for -i -t flags
# -i allows us input something
# -t is to format the output

# interact with redis
set mynumber 5
get mynumber 
>>"5"
