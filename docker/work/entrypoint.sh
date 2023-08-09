#!/bin/bash
set -e
jupyter lab --port=8081 --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token='' --NotebookApp.password='' & \
nginx -g "daemon off;" -c /build/nginx.conf
