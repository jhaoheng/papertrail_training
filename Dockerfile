FROM        ubuntu:16.04

ARG         PKG=https://github.com/papertrail/remote_syslog2/releases/download/v0.20/remote_syslog_linux_amd64.tar.gz
RUN         apt-get update && apt-get install -y vim wget
RUN         cd /home && \
            wget $PKG -O remote_syslog.tar.gz  && \
            tar xvf remote_syslog.tar.gz && \
            cd remote_syslog && \
            mv remote_syslog /usr/bin && \
            rm -rf /home/remote_syslog*