#!/bin/bash

curl -O http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz
gunzip -f GeoLiteCity.dat.gz
docker build --rm -t vaiski/logstash -t vaiski/logstash:2.3.3 .
