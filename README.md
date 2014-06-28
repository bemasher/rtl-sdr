# rtl-sdr

A Docker container for building and executing rtl-sdr tools: http://sdr.osmocom.org/trac/wiki/rtl-sdr

# Usage

Obtain the image from the docker hub:

```docker pull bemasher/rtl-sdr```

Run an rtl-sdr tool from the container:

```docker run -d -p 1234:1234 --privileged -v /dev/bus/usb:/dev/bus/usb --name rtl_tcp bemasher/rtl-sdr rtl_tcp -a 0.0.0.0```
