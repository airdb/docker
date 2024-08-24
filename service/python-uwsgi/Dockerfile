FROM ubuntu:24.04

WORKDIR /app/python

RUN apt update && apt install --no-install-recommends -y \
	supervisor \
	nginx \
	vim \
	netcat \
	uwsgi \
	uwsgi-plugin-python3 \
	python3 \
	python3-pip && \
	rm -rf /var/cache/apt/archives /var/lib/apt/lists/*

COPY . /app/python/

RUN pip3 install --no-cache-dir -r requirements.txt

#CMD ["/bin/bash", "--login"]
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
