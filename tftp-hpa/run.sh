#!/usr/bin/env bashio
networks=$(bashio::config 'networks')
tftproot=$(bashio::config 'tftproot')
echo "Starting tftpd..."
echo "arguments :${tftproot} networks"
exec /usr/sbin/in.tftpd --foreground --verbose --address :69 ${tftproot}
