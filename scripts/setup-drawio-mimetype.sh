#!/bin/bash
docker-compose exec -u www-data nextcloud php occ files:scan --all
