#!/bin/bash

# Enable strict error handling
set -o errexit
# Treat unset variables as errors
set -o nounset
# Consider the last non-zero exit code in a pipeline as the script's exit code
set -o pipefail
# Print each command and its expanded arguments as they are executed
set -o xtrace

# Define the target host, path, and architecture
readonly TARGET_HOST="pi@blueos.local"
readonly TARGET_PATH="/home/pi/deploy/jupyter-rpi"
readonly SOURCE_PATH="."

ssh -t "${TARGET_HOST}" rm -rf deploy/jupyter-rpi
ssh -t "${TARGET_HOST}" mkdir -p deploy/jupyter-rpi

# Transfer the source folder to the target host.
rsync -r "${SOURCE_PATH}" "${TARGET_HOST}:${TARGET_PATH}"

# SSH into the target host, then start the container.
ssh -t "${TARGET_HOST}" "cd ${TARGET_PATH}/docker/ && docker build -t navigator_jupyter .\
    && cd ../ \
    && ./run_docker.sh"
