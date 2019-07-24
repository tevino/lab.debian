FROM debian:stable

RUN apt-get update -q -y && apt-get install --no-install-recommends -y \
libc-dev gcc make \
locales \
gdb valgrind \
sed grep \
bash tmux \
curl ca-certificates \
git \
&& rm -rf /var/lib/apt/lists/*

# Set locale to en_US UTF-8
RUN export DEBIAN_FRONTEND=noninteractive; echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen en_US.UTF-8 && \
    dpkg-reconfigure locales && \
    /usr/sbin/update-locale LANG=en_US.UTF-8

WORKDIR /data

ENTRYPOINT ["/bin/bash"]

