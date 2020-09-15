#!/bin/bash

#
# https://medium.com/@jimkang/how-to-start-a-new-jenkins-container-and-update-jenkins-with-docker-cf628aa495e9
#

#docker container run -it monjenkins-v1

# I'll keep it as "jenkins", you can use "jenkins_home" if you wish
  if [ ! -d "${HOME}/jenkins" ];
  then
    mkdir --parents --verbose "${HOME}/jenkins";
  fi




# if you're using other names, replace $HOME/jenkins with your choice
# in case you want to change port, use this
# -e JENKINS_OPTS="--httpPort=80" (remember to change 8080:8080 below to 80:80)

docker container run \
--name jenkins \
-p 8080:8080 -p 50000:50000 \
-v "${HOME}/jenkins:/var/jenkins_home" \
-d \
monjenkins-v1