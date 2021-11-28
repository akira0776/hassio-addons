#!/usr/bin/env bashio
networks=$(bashio::config 'networks')
port=$(bashio::config 'port')
echo "Starting tftpd..."
exec /bin/bash
