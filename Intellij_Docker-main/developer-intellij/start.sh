#!/bin/bash

xhost +
sudo chown -R $USER *
sudo chgrp -R $USER *
sudo chown -R $USER ../IdeaProjects
sudo chgrp -R $USER ../IdeaProjects
docker-compose up
docker-compose down
xhost -
