FROM debian:bookworm
MAINTAINER Ilya Stepanov <dev@ilyastepanov.com>

RUN apt-get update && \
    apt-get install -y python-is-python3 cron s3cmd && \
    rm -rf /var/lib/apt/lists/*

ADD s3cfg /root/.s3cfg

ADD start.sh /start.sh
RUN chmod +x /start.sh

ADD sync.sh /sync.sh
RUN chmod +x /sync.sh

ADD get.sh /get.sh
RUN chmod +x /get.sh

ENTRYPOINT ["/start.sh"]
CMD [""]
