FROM bluerobotics/blueos-base:v0.0.9
RUN apt-get update && apt-get -y update
RUN apt-get install -y build-essential libffi-dev
RUN apt install -y libzmq3-dev
RUN apt install -y cargo
RUN pip3 install --no-cache-dir jupyterlab --verbose
RUN pip3 install --no-cache-dir plotly --verbose
RUN pip3 install --no-cache-dir bluerobotics_navigator --verbose
RUN mkdir -p /workmkdir/notebook/persistent
COPY ./work/entrypoint.sh /work/entrypoint.sh
COPY work/notebooks/* /work/notebook/
WORKDIR /work/notebook
RUN chmod -R 765 /work/*.sh
COPY /build /build
RUN /build/install_nginx.sh
ENTRYPOINT ["/work/entrypoint.sh"]
CMD ["server"]

# COPY app /app
# RUN python /app/setup.py install

# EXPOSE 80/tcp

LABEL version="0.0.0"
LABEL permissions='\
{\
  "ExposedPorts": {\
    "80/tcp": {}\
  },\
  "HostConfig": {\
    "Privileged": true,\
    "Binds":["/root/.config:/root/.config"],\
    "PortBindings": {\
      "80/tcp": [\
        {\
          "HostPort": ""\
        }\
      ]\
    }\
  }\
}'
LABEL authors='[\
    {\
        "name": "Raul Trombin",\
        "email": "raulvtormbin@gmail.com"\
    }\
]'
LABEL company='{\
        "about": "",\
        "name": "Raul Trombin",\
        "email": "raulvtormbin@gmail.com"\
    }'
LABEL type="example"
LABEL readme='https://raw.githubusercontent.com/Williangalvani/BlueOS-examples/{tag}/example4-vue-backend/Readme.md'
LABEL links='{\
        "website": "https://github.com/Williangalvani/BlueOS-examples/",\
        "support": "https://github.com/Williangalvani/BlueOS-examples/"\
    }'
LABEL requirements="core >= 1.1"
