FROM ubuntu:22.04

WORKDIR /app/python

RUN apt update && apt install --no-install-recommends -y \
	python3 \
	python3-pip && \
	rm -rf /var/cache/apt/archives /var/lib/apt/lists/*

COPY . /app/python/

RUN pip3 install -r requirements.txt

#CMD ["/bin/bash", "--login"]
