docker run -d \
    --name jupyterlab-container \
    --user root \
    -v /extensions/navigator_jupyterlab/notebooks:/work/notebook/persistent \
    -p 8082:8081 \
    --privileged \
    navigator_jupyter
