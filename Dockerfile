FROM alpine:latest
MAINTAINER Radek Slavicinsky "radek@blufor.cz"
ENV ETCD_VERSION "3.0.3"
ADD tools/* /bin/
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
  && apk add --no-cache bash curl git make go go-tools ruby ruby-rake ruby-bundler ruby-json runit unzip \
  && gem install etcd-tools port-authority --no-rdoc --no-ri \
  && curl -L https://github.com/coreos/etcd/releases/download/v${ETCD_VERSION}/etcd-v${ETCD_VERSION}-linux-amd64.tar.gz -o /tmp/etcd.tar.gz 2>/dev/null \
  && tar xvzf /tmp/etcd.tar.gz -C /tmp \
  && cp /tmp/etcd-v${ETCD_VERSION}-linux-amd64/etcdctl /bin/ \
  && rm -rf /var/cache/apk /var/tmp /tmp
