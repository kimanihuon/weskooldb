#!/bin/bash

# xterm -e bash -c "mongod --replSet rs0 --port 27018 --bind_ip localhost --dbpath /srv/mongodb/rs0-0  --oplogSize 128;" &

# xterm -e bash -c "mongod --replSet rs0 --port 27019 --bind_ip localhost --dbpath /srv/mongodb/rs0-1  --oplogSize 128;" &

# xterm -e bash -c "mongod --replSet rs0 --port 27020 --bind_ip localhost --dbpath /srv/mongodb/rs0-2  --oplogSize 128;"

# mkdir -p /data/db0-1  /data/db0-2

xterm -e bash -c "mongod --replSet rs --port 27017 --bind_ip localhost --dbpath /data/db  --oplogSize 128;" &

xterm -e bash -c "mongod --replSet rs --port 27018 --bind_ip localhost --dbpath /data/db0-1  --oplogSize 128;" &

xterm -e bash -c "mongod --replSet rs --port 27019 --bind_ip localhost --dbpath /data/db0-2  --oplogSize 128;"
