FROM gliderlabs/alpine:3.1
MAINTAINER Hendrik Volkmer <hvolkmer@gmail.com>
ENV CONSUL_TEMPLATE_VERSION=0.10.0

ADD https://github.com/hashicorp/consul-template/releases/download/v${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.tar.gz /tmp/consul-template.tar.gz
RUN cd /bin && tar -xvzf /tmp/consul-template.tar.gz && chmod +x /bin/consul-template && rm /tmp/consul-template.tar.gz

RUN mkdir /config
RUN mkdir /templates
ADD templates/* /templates
ADD create-config.sh /create-config.sh

RUN apk --update add curl

ENTRYPOINT ["/create-config.sh"]

