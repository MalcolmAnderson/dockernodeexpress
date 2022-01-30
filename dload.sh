# docker stop node-app

# -f flag on docker rm command removes the requirement to stop the node first
# -v flag tells the command to delete the anonomous bind mount (app/node_modules)
docker rm node-app -fv
sh ./db.sh
sh ./dcr.sh