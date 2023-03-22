install:
	install -Dm 0755 plex.sh /usr/local/bin/plex.sh
	install -Dm 0644 plex.service /etc/systemd/system/plex.service
	systemctl enable plex
	touch /etc/plex.env
