#!/bin/bash
/usr/local/bin/docker-compose exec -u www-data nextcloud /usr/local/bin/php /var/www/html/occ preview:generate-all -vvv
