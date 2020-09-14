# Burp Scanner

[Burp Scanner](https://portswigger.net/burp/documentation/scanner) Community Edition `docker` image build.

## Usage

1. Download the burp `2020.9.1-CE` installer [here](https://portswigger.net/burp/releases/professional-community-2020-9-1?requestededition=community)
1. Build the scanner image: `docker build --rm -t burp`
1. Run the container sharing the hosts X Server: `docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --name burp burp`

**Note**: in case of `No protocol specified` errors you could disable host checking with `xhost +` but there is a warning to that (`man xhost` for additional information).
