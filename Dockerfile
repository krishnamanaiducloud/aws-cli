FROM alpine:3.10.2

ENV AWSCLI_VERSION "1.16.230"

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
    && pip install awscli==$AWSCLI_VERSION s3cmd==2.0.2 --upgrade --user \
    && apk --purge -v del py-pip \
    && rm -rf /var/cache/apk/*

VOLUME /root/.aws

ENTRYPOINT ["/root/.local/bin/aws"]
