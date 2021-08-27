#FROM ubuntu:20.04
FROM ubuntu:20.04
MAINTAINER info@airdb.com

# docker build -t airdb/toolbox . -f toolbox.dockerfile

# Step 1: List service infomation and choose stable version.
ENV RUNNING_CONTEXT="docker" \
    SERVICE=toolbox \
    LANGUAGE=en_US.UTF-8 \
    PS1='[\H \W]\$ ' \
    PASSWD=airdb.com \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    HOMEDIR=/srv \
    PS1='[\H \W]\$ ' \
    HOSTNAME=airdb.dev \
    PASSWD=airdb.com


#ADD airdb.com.sh /etc/profile.d/
WORKDIR $HOMEDIR

RUN apt update && apt install -y curl \
      git \
      vim \
      gcc \
      mysql-client

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
	apt install -y nodejs && \
	npm install -g serverless


RUN apt-key --keyring /usr/share/keyrings/githubcli-archive-keyring.gpg adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0 &&\
	echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/github-cli2.list > /dev/null &&\
	apt update &&\
	apt install -y gh

ADD https://golang.org/dl/go1.16.4.linux-amd64.tar.gz /tmp/go.tar.gz
RUN tar xvf /tmp/go.tar.gz -C /srv/ && \
	/srv/go/bin/go env -w GOPRIVATE=airdb.io,github.com/airdb  && \
	/srv/go/bin/go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest

RUN rm -f /tmp/go.tar.gz

WORKDIR /root/src/airdb.io/airdb
RUN echo "export RUNNING_CONTEXT=docker" >> /etc/profile
RUN echo "export PS1='[\H \W]\\$ '" >> /etc/profile
RUN echo "export PATH='$PATH:/srv/go/bin:/go/bin/'" >> /etc/profile
RUN echo 'export HISTTIMEFORMAT="%Y-%m-%d %T $(pwd)" ' >> /etc/profile

RUN sh /etc/profile

#CMD /bin/bash
CMD ["/bin/bash", "--login", "--init-file", "/etc/profile"]
