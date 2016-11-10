FROM logstash:5.0.0
MAINTAINER Eemil Väisänen <eemil.vaisanen@iki.fi>

ADD conf.d /etc/logstash/conf.d
ADD patterns /etc/logstash/patterns
ADD GeoLiteCity.dat /etc/logstash/GeoLiteCity.dat

EXPOSE 5959
EXPOSE 5544
EXPOSE 5000

CMD ["-f", "/etc/logstash/conf.d"]
