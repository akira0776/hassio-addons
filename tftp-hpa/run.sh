#!/usr/bin/env bash
set -e
CONFIG_PATH=/data/options.json
tftproot=USERNAME=$(jq --raw-output '.username // empty' ${CONFIG_PATH})
tftproot=USERNAME=$(jq --raw-output '.username // empty' ${CONFIG_PATH})

echo "root is : ${tftproot}"

# #!/usr/bin/env bashio
# networks=$(bashio::config 'networks')
# tftproot=$(bashio::config 'tftproot')
echo "Starting tftpd..."
exec /usr/sbin/in.tftpd --foreground --verbose --address :69 ${tftproot}
