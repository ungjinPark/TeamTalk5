# TeamTalk 5 Docker

You can start the Docker image as follows.
docker run -d -h hostname.yourdomain.com --memory=300M --restart=always -v /var/teamtalk/files/VOLUME_NAME:/var/teamtalk/files -p TCP_PORT:TCP_PORT/tcp -p UDP_PORT:UDP_PORT/udp -e TEAMTALK_SERVER_NAME='' -e MESSAGE_OF_THE_DAY='' -e MAX_ALLOWED_USERS_SERVER='' -e TCP_PORT_CUSTOM='' -e UDP_PORT_CUSTOM='' -e REPLACE_THIS_USERNAME='' -e REPLACE_THIS_PASSWORD='' IMAGE NAME HERE