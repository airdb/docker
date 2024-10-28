FROM python:3.13.0

WORKDIR /app/
COPY . /app/

RUN pip install --no-cache-dir --upgrade pip && \
	pip3 install --no-cache-dir -r requirements.txt

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "export PS1='python@\H \w\\$ '" >> /etc/profile


#CMD ["/bin/bash", "--login"]
