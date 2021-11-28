#!/usr/bin/env bashio
networks=$(bashio::config 'networks')
tftproot=$(bashio::config 'tftproot')
echo "Starting tftpd..."
exec /usr/sbin/in.tftpd --foreground --verbose --address :69 ${tftproot}
