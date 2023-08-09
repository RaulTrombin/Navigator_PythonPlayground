FROM balenalib/raspberry-pi-debian-python:3-buster
RUN apt-get update && apt-get -y update
RUN apt-get install -y build-essential python3-dev libffi-dev
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir jupyterlab --verbose
RUN pip3 install --no-cache-dir plotly --verbose
RUN pip3 install --no-cache-dir bluerobotics_navigator --verbose
RUN mkdir -p /workmkdir/notebook/persistent
COPY ./work/entrypoint.sh /work/entrypoint.sh
COPY work/notebooks/* /work/notebook/
WORKDIR /work/notebook
EXPOSE 8081
RUN chmod -R 765 /work/*.sh
ENTRYPOINT ["/work/entrypoint.sh"]
CMD ["server"]