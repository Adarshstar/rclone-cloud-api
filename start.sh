#!/bin/bash
set -e

mkdir -p /root/.config/rclone
echo "$RCLONE_CONF" > /root/.config/rclone/rclone.conf
chmod 600 /root/.config/rclone/rclone.conf

echo "Starting rclone rcd on port ${PORT:-10000}..."
exec rclone rcd \
  --rc-addr "0.0.0.0:${PORT:-10000}" \
  --rc-user "${RC_USER:-admin}" \
  --rc-pass "${RC_PASS:-rclone-api-2026}" \
  --rc-web-gui-no-open-browser \
  --log-level INFO
