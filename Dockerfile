FROM debian:jessie
RUN apt-get update && \
    apt-get install -y steghide && \
    apt-get clean autoclean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/ && \
    rm -rf /tmp/
ENTRYPOINT ["steghide"]
