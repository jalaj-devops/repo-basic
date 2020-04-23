# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "miiro@getintodevops.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f tcp://127.0.0.1:2375 || exit 1

# tell docker what port to expose
EXPOSE 2375