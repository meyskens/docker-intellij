FROM openjdk:8

RUN apt-get update && apt-get install -y \
	dirmngr \
	gnupg \
	--no-install-recommends \
	&& apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0AB215679C571D1C8325275B9BDB3D89CE49EC21 \
	&& echo "deb http://ppa.launchpad.net/mozillateam/firefox-next/ubuntu xenial main" >> /etc/apt/sources.list.d/firefox.list \
	&& apt-get update && apt-get install -y \
	ca-certificates \
	firefox \
	hicolor-icon-theme \
	libasound2 \
	libgl1-mesa-dri \
	libgl1-mesa-glx \
	--no-install-recommends 

RUN apt-get install -y git wget tar maven firefox

RUN wget https://download.jetbrains.com/idea/ideaIU-2017.2.5.tar.gz &&\
    tar -xzf ideaIU-2017.2.5.tar.gz && rm -f ideaIU-2017.2.5.tar.gz

CMD idea-IU-172.4343.14/bin/idea.sh