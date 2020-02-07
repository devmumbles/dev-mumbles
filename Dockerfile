FROM swift:5.0.1

RUN mkdir /mumbles
WORKDIR /mumbles

RUN apt-get update && apt upgrade -qqy && \
    DEBIAN_FRONTEND=noninteractive apt-get -qqy --no-install-recommends install build-essential curl git htop libcurl4-openssl-dev libssl-dev locales netcat-openbsd net-tools openssl ssh tzdata vim wget && \
    echo "en_US UTF-8" > /etc/locale.gen && \
    locale-gen en_US.UTF-8 && \
    sed -i -E 's/# (set convert-meta off)/\1/' /etc/inputrc && \
    ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata && \
    git clone --branch 0.13.0 https://github.com/yonaskolb/Mint.git /Mint && \
    cd /Mint && make

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_CTYPE=en_US.UTF-8 \
    LC_NUMERIC=en_US.UTF-8 \
    LC_TIME=en_US.UTF-8 \
    LC_COLLATE=en_US.UTF-8 \
    LC_MONETARY=en_US.UTF-8 \
    LC_MESSAGES=en_US.UTF-8 \
    LC_PAPER=en_US.UTF-8 \
    LC_NAME=en_US.UTF-8 \
    LC_ADDRESS=en_US.UTF-8 \
    LC_TELEPHONE=en_US.UTF-8 \
    LC_MEASUREMENT=en_US.UTF-8 \
    LC_IDENTIFICATION=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

EXPOSE 8080

CMD ["swift", "run"]
