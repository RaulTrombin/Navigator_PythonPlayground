docker run -d \
    --name jupyterlab-container \
    --user root \
    -v /extensions/navigator_jupyterlab/notebooks:/work/notebook/persistent \
    -p 8082:8888 \
    --privileged \
    raulelektron/navigator_jupyter:latest
