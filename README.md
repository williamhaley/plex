# Plex

Generic scripts for running Plex on a Linux server

# Install

Create a config file at `/etc/plex.env` like so

```
# IP address of the server
ADVERTISE_IP=192.168.1.123
# CIDR of the server
NETWORK=192.168.1.1/24

TIMEZONE=America/Denver
MUSIC_DIRECTORY=/srv/plex/Music
VIDEOS_DIRECTORY=/srv/plex/Videos
CONFIGS_DIRECTORY=/srv/plex/Plex
```

```
root $ make install
```

```
root $ systemctl start plex
```

# Access

Navigate to `http://192.168.1.123:34200/web/` and bypass/defer signing up for a Plex account when prompted
