FROM nginx

ARG DIST_FOLDER="dist"

COPY $DIST_FOLDER/ /usr/share/nginx/html/