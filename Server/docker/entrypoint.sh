#!/bin/bash

sed -i "s/TEAMTALK SERVER NAME/${TEAMTALK_SERVER_NAME}/g" /var/teamtalk/tt5srv.xml
sed -i "s/MESSAGE OF THE DAY/${MESSAGE_OF_THE_DAY}/g" /var/teamtalk/tt5srv.xml
sed -i "s/MAX ALLOWED USERS SERVER/${MAX_ALLOWED_USERS_SERVER}/g" /var/teamtalk/tt5srv.xml
sed -i "s/TCP_PORT_CUSTOM/${TCP_PORT_CUSTOM}/g" /var/teamtalk/tt5srv.xml
sed -i "s/UDP_PORT_CUSTOM/${UDP_PORT_CUSTOM}/g" /var/teamtalk/tt5srv.xml
sed -i "s/REPLACE THIS USERNAME/${REPLACE_THIS_USERNAME}/g" /var/teamtalk/tt5srv.xml
sed -i "s/REPLACE THIS PASSWORD/${REPLACE_THIS_PASSWORD}/g" /var/teamtalk/tt5srv.xml

sleep 10s

cd /var/teamtalk
./tt5srv -nd