FROM python:3

#RUN DEBIAN_FRONTEND=noninteractive apt install -y --reinstall ca-certificates nmap

RUN git clone  https://github.com/airdb/behave-browserstack /srv/behave-browserstack

WORKDIR /srv/behave-browserstack

RUN pip install -r requirements.txt
#RUN paver run local
