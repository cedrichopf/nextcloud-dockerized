#!/bin/bash

set -e

# Configuration
enabled=${GENERATOR_ENABLED:-false}
break=${GENERATOR_CRON:-600}
username="www-data"
php_bin="/usr/local/bin/php"
nextcloud_dir="/var/www/html"

cd $nextcloud_dir

while true; do
  if $enabled; then
    echo "Running Preview Generator pre-generate command"
    sudo -u $username $php_bin occ preview:pre-generate
    echo "Sleeping for ${break} seconds"
  else
    echo "Preview Generator not activated, sleeping for ${break} seconds"
  fi
  sleep $break
done
