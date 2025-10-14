FROM continuumio/anaconda3:main

RUN apt update && apt upgrade -y \
    && apt install -y build-essential wget curl git fish \
    && chsh -s $(which fish)

WORKDIR /usr/src/app

RUN conda install jupyter -y --quiet \
    && mkdir -p /opt/notebooks

CMD [ "sleep", "infinity" ]