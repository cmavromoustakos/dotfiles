eval `boot2docker shellinit 2>/dev/null`

function dclean {
  echo "Removing stopped containers and removing untagged images..."
  docker rm $(docker ps --all --quiet --filter status=created)
  docker rm $(docker ps --all --quiet --filter status=exited)
  docker rmi $(docker images --quiet --filter dangling=true)
}
