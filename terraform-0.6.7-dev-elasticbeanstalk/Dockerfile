FROM debian:jessie

RUN apt-get update && apt-get install -y git
ADD terraform_elasticbeanstalk_amd64.tar.gz /usr/local/bin/
ENV PATH="$PATH:/usr/local/bin"

ADD run.sh /opt/

ENTRYPOINT ["/opt/run.sh"]
