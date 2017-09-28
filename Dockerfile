FROM meyskens/desktop-base

RUN apt-get update && apt-get install -y git

RUN wget https://download.jetbrains.com/idea/ideaIU-2017.2.5.tar.gz &&\
    tar -xzf ideaIU-2017.2.5.tar.gz

CMD idea-IU-172.4343.14/bin/idea.sh