FROM alpine:3.10.2

ENV AWSCLI_VERSION "1.16.230"

COPY keep_live.sh ./

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
    && pip install awscli==$AWSCLI_VERSION s3cmd==2.0.2 --upgrade --user \
    && apk --purge -v del py-pip \
    && rm -rf /var/cache/apk/*

VOLUME /root/.aws

CMD ["sh" , "keep_live.sh"]

ENTRYPOINT ["/root/.local/bin/aws"]
