#!/bin/bash
/usr/local/bin/docker-compose exec -u www-data nextcloud php occ preview:generate-all -vvv

