# ElasticDocker
FROM docker.elastic.co/elasticsearch/elasticsearch:6.2.4

MAINTAINER KIRAryo1 <r.kira@grooves.com>

RUN wget http://dl.embulk.org/embulk-latest.jar -O /usr/local/bin/embulk
RUN chmod +x /usr/local/bin/embulk
RUN embulk gem install embulk-input-mysql embulk-output-elasticsearch

RUN bin/elasticsearch-plugin install analysis-kuromoji
RUN bin/elasticsearch-plugin install repository-s3
