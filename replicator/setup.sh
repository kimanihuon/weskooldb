#!/usr/bin/env sh
 
if [ -f /replicated.txt ]; then
  echo "Mongo is already set up"
else
  echo "Setting up mongo replication ..."
  # Wait for few seconds until the mongo server is up
  sleep 10
  mongo db:27017 replicate.js
  echo "Replication done..."
  # Wait for few seconds until replication takes effect
  # sleep 20
  # echo "Seeding done..."
  touch /replicated.txt
fi