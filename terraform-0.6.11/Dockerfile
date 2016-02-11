FROM debian:jessie

RUN apt-get update && apt-get install -y git wget unzip
RUN wget -q https://releases.hashicorp.com/terraform/0.6.11/terraform_0.6.11_linux_amd64.zip  && \
    unzip terraform_0.6.11_linux_amd64.zip -d /usr/local/bin && \
    rm terraform_0.6.11_linux_amd64.zip
ENV PATH="$PATH:/usr/local/bin"

ADD run.sh /opt/

ENTRYPOINT ["/opt/run.sh"]
