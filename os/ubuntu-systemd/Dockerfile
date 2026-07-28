FROM ubuntu:26.04

LABEL maintainer="Dean <Dean@airdb.com>"

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

ENV RUNNING_CONTEXT "docker"
RUN echo "export RUNNING_CONTEXT=docker" >> /etc/profile

RUN echo "export PS1='ubuntu@\H \w\\$ '" >> /root/.profile



WORKDIR /srv

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && \
	apt install -y curl git less vim && \
	apt install -y gcc g++ make && \
    apt install -y systemd systemd-sysv

## Install network releated deb package.
RUN apt install -y --reinstall ca-certificates && \
	apt install -y net-tools iproute2 iputils-ping telnet nmap netcat-openbsd

# 清理默认硬件/udev启动项
RUN rm -f /lib/systemd/system/multi-user.target.wants/\* \
    /lib/systemd/system/sockets.target.wants/\*udev\* \
    /lib/systemd/system/sockets.target.wants/\*initctl\* \
    /lib/systemd/system/basic.target.wants/\*

# journald 容器兼容覆盖
RUN mkdir -p /etc/systemd/system/systemd-journald.service.d
RUN cat > /etc/systemd/system/systemd-journald.service.d/override.conf <<'EOF'
[Service]
PrivateMounts=no
ProtectSystem=no
ProtectHome=no
ReadWritePaths=/
NoNewPrivileges=no
PrivateDevices=no
StandardOutput=journal+console
EOF

# 核心：mask logind 及其 socket，阻断自动拉起
# 屏蔽所有容器环境持续崩溃、无用服务
RUN systemctl mask \
    systemd-logind.service \
    systemd-logind-varlink.socket \
    modprobe@drm.service \
    console-getty.service \
    serial-getty@\*.service \
    systemd-resolved.service \
    systemd-resolved.socket \
    systemd-resolved-monitor.socket \
    systemd-resolved-varlink.socket \
    systemd-timesyncd.service \
    systemd-journald.socket \
    systemd-journald-dev-log.socket \
    systemd-journal-flush.service \
    systemd-udevd.service \
    systemd-udev-trigger.service \
    systemd-udev-settle.service


# 可选：同时屏蔽硬件 DRM 模块加载（消除 modprobe@drm 日志）
RUN systemctl mask modprobe@drm.service
