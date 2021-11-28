#!/usr/bin/env bashio
networks=$(bashio::config 'networks')
tftproot=$(bashio::config 'tftproot')
echo "Starting tftpd..."
echo "And fuck you..."
exec /usr/sbin/in.tftpd --foreground --verbose --address :69 ${tftproot}
