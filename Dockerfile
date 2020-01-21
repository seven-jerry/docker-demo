
FROM debian:latest

RUN apt-get update
RUN apt-get install -y sl


#RUN dd if=/dev/zero of=/big_file.txt bs=4k iflag=fullblock,count_bytes count=4G
#RUN rm -rf /big_file.txt

HEALTHCHECK --interval=10s --timeout=10s --retries=2 CMD /health.sh

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh