FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y npm nodejs git
ADD sendd /sendd
ADD start.sh /start.sh
CMD chmod +x /start.sh
EXPOSE 3000 9000
ENV HOST=localhost
ENV PEERJSPORT=9000
ENV HTTPPORT=3000
CMD su -c "export HOST=$HOST && /start.sh"
