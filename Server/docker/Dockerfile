FROM ubuntu:18.04

ENV TEAMTALK_SERVER_NAME="QS-Hosting"
ENV MESSAGE_OF_THE_DAY="Welcome to your brand new server!"
ENV MAX_ALLOWED_USERS_SERVER="50"
ENV TCP_PORT_CUSTOM="12577"
ENV UDP_PORT_CUSTOM="12577"
ENV REPLACE_THIS_USERNAME="test"
ENV REPLACE_THIS_PASSWORD="test"

RUN apt-get update
RUN apt-get dist-upgrade -y

RUN mkdir /var/teamtalk
ADD tt5srv /var/teamtalk/tt5srv
RUN chmod u+rx /var/teamtalk/tt5srv

ADD tt5srv.xml /var/teamtalk/tt5srv.xml
RUN chmod u+w /var/teamtalk/tt5srv.xml

RUN mkdir /var/teamtalk/files
RUN chmod -R u+w /var/teamtalk/files

ADD entrypoint.sh /entrypoint.sh
RUN chmod u+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
