FROM	alpine:3.10

RUN	apk add miniupnpd util-linux && \
	echo \#\!/bin/sh >> /usr/local/bin/entrypoint.sh && \
	echo "sed -i -e \"s/^uuid=$/uuid=\`uuidgen\`/\" /etc/miniupnpd/miniupnpd.conf" >> /usr/local/bin/entrypoint.sh && \
	echo "miniupnpd \"\$@\"" >> /usr/local/bin/entrypoint.sh && \
	chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
CMD	["-d"]

