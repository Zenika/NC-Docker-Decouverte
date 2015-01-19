#!/bin/sh
# Run the registry for everybody "locally" to use

docker run \
       -v "$PWD"/storage:/registry \
       -e SETTINGS_FLAVOR=local \
       -e STORAGE_PATH=/registry \
       -p 5000:5000 \
       registry
