FROM --platform=linux/amd64 alpine

WORKDIR /root
RUN wget https://github.com/fatedier/frp/releases/download/v0.44.0/frp_0.44.0_linux_amd64.tar.gz
RUN tar zxvf frp_0.44.0_linux_amd64.tar.gz
RUN mv frp_0.44.0_linux_amd64 frp
RUN rm frp_0.44.0_linux_amd64.tar.gz
WORKDIR /root/frp
RUN mkdir -p /var/lib/frp
RUN cp frps.ini /var/lib/frp/
WORKDIR /
COPY ./entrypoint.sh ./
RUN chmod +x ./entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]

