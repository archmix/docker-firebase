FROM node:12.18.3-buster

RUN \
    npm install -g firebase-tools

# -----------------------------------------------------------------------------
# WORKDIR is the generic /app folder. All volume mounts of the actual project
# code need to be put into /app.
# -----------------------------------------------------------------------------
WORKDIR \
    /app

CMD [ "firebase", "serve", "--host", "0.0.0.0"]