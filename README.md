# Navigator Python Playground

A BlueOS extension to fast learn and test navigator's Python library.

# Instructions

On BlueOS, go to Extensions and install with the following parameters.

```
elektron.navigator_python_playground

Navigator Playground

raulelektron/navigator_python_playground

latest

{
  "ExposedPorts": {
    "80/tcp": {}
  },
  "HostConfig": {
    "Privileged": true,
    "Binds": [
      "/root/.config:/root/.config",
      "/usr/blueos/extensions/navigator_python_playground/notebooks:/work/notebook/persistent"
    ],
    "PortBindings": {
      "80/tcp": [
        {
          "HostPort": ""
        }
      ]
    }
  }
}
```
# References
https://medium.com/gopypi/setting-jupyterlab-with-docker-raspberry-pi-4-1534607d435e
https://medium.com/@nicklas_bocksberger/setting-up-jupyter-notebook-on-a-server-with-nginx-as-proxy-d579d4075bb