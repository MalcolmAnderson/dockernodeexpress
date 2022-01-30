# the first bind mount (-v) links the app dir on the container to this directory where development is being done
#       it's set to read only (:ro at the end) so that changes from your dev environment get passed to the container
#       but changes from the container do not get passed back to your dev environment
# the second bind mount says, protect and preserve the node_modules directory 
# this doesn't conflict with the first bind mount, because specificity wins 
#       and app/node_modules is more specific than app/
#
# The --env line is replaced by the contents of the .env file
# old version
# docker run \
#     -v $(pwd):/app:ro \
#     -v /app/node_modules \
# #    --env PORT=4000 \  replaced by "--env-file ./.env"
#     -p 3000:4000 \
#     -d \
#     --name node-app \
#     node-app-image

docker run \
    -v $(pwd):/app:ro \
    -v /app/node_modules \
    --env-file ./.env \
    -p 3000:4000 \
    -d \
    --name node-app \
    node-app-image