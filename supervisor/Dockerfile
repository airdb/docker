FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install --no-install-recommends -y \
    vim git curl \
    supervisor \
    cron && \
    rm -rf /var/cache/apt/archives /var/lib/apt/lists/*

COPY run-cron /etc/cron.d/run-cron
RUN chmod 0644 /etc/cron.d/run-cron
RUN crontab /etc/cron.d/run-cron

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

#CMD sleep 3600
#CMD ["/usr/bin/supervisord"]
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
