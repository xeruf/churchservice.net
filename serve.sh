#!/bin/sh -e
sass . --watch &
caddy file-server --listen :8888 &
xdg-open http://localhost:8888
