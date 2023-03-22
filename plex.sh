#!/usr/bin/env bash

set -e

docker pull plexinc/pms-docker

source /etc/plex.env

docker run \
  --rm \
  --name plex \
  -p 32400:32400/tcp \
  -p 3005:3005/tcp \
  -p 8324:8324/tcp \
  -p 32469:32469/tcp \
  -p 1900:1900/udp \
  -p 32410:32410/udp \
  -p 32412:32412/udp \
  -p 32413:32413/udp \
  -p 32414:32414/udp \
  -e TZ="${TIMEZONE}" \
  -e ADVERTISE_IP="http://${ADVERTISE_IP}:32400" \
  -e ALLOWED_NETWORKS="${NETWORK}" \
  -h plex \
  -v "${CONFIGS_DIRECTORY}/config":/config \
  -v "${CONFIGS_DIRECTORY}/transcode":/transcode \
  -v "${MUSIC_DIRECTORY}":/music:ro \
  -v "${VIDEOS_DIRECTORY}":/videos:ro \
  plexinc/pms-docker
