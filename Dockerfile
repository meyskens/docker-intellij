FROM openjdk:8

RUN apt-get update && apt-get install -y git wget tar maven iceweasel fish
         
RUN wget https://download.jetbrains.com/idea/ideaIU-2018.1.3.tar.gz &&\
    tar -xzf ideaIU-2017.3.2.tar.gz && rm -f ideaIU-2017.3.2.tar.gz

CMD idea-IU-173.4127.27/bin/idea.sh
