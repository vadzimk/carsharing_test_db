#!/bin/bash
set -e

createdb -U postgres -T template0 car_sharing_container_test
pg_restore --dbname=car_sharing_container --verbose ../backup/dump.tar
