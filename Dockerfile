FROM alpine:3.21.3

RUN set -ex \
    && apk update \
    && apk upgrade \
    && apk add --no-cache \
    bash \
    curl \
    jq \
    vim \
    zsh \
    # Clean up
    rm -rf /var/cache/apk/*

WORKDIR /root

# Running ZSH
CMD ["zsh"]

