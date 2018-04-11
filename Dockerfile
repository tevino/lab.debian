FROM debian:stable

RUN apt-get update -q -y && apt-get install --no-install-recommends -y \
gcc make \
gdb valgrind \
sed grep \
bash \
&& rm -rf /var/lib/apt/lists/*

WORKDIR /data

ENTRYPOINT ["/bin/bash"]
