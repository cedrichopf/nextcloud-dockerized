#!/bin/bash
docker-compose exec -u www-data nextcloud php occ db:add-missing-indices
