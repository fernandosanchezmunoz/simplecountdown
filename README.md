simplecountdown
===============

Minimalistic image that displays a countdown on stdout for a programmable number of seconds.

Based on Alpine linux, this image is useful as an example for job/batch testing in cloud orchestration platforms.

TODO: Web Interface (future)
The image  also has a simple web server in which it prints the countdown. It has been modified to look for the $PORT0 variable and start the websocket in that port if defined. This would be useful for deployment with Marathon and DC/OS.


## How to use
```
docker run -p 80:8080  -e PORT0=8080 fernandosanchez/simplecountdown
```

Where the container is listening on port 8080 ($PORT0) and it's exposed for web access on port 80.

If deployed inside Marathon, the web server will be automatically be available in the "Service Port".

For access within lan / localhost : visit http://localhost:80 or http://privateip:80

