# REDIS

## UNINSTALL REDIS

1) sudo systemctl stop redis
2) sudo apt-get purge --auto-remove redis-server
sudo rm -r /etc/redis/
sudo rm -r /var/lib/redis/
sudo deluser redis
sudo delgroup redis


## START REDIS
redis-server

## GET TO REDIS CLI
redis-cli

## SET PERSISTENCE OF AOF TO YES OR NO
CONFIG SET appendonly yes

## READ PERSISTENCE OF AOF
CONFIG GET appendonly

## FIND REDIS DIRECTORY
config get dir