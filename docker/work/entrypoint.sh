#!/bin/bash
set -e
jupyter lab --port=8888 --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token='' --NotebookApp.password='' --NotebookApp.allow_origin='*' --NotebookApp.allow_remote_access=True --NotebookApp.trust_xheaders=True & \
nginx -g "daemon off;" -c /build/nginx.conf
