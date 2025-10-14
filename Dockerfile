FROM ubuntu:24.04

RUN apt update && apt upgrade -y \
    && apt install -y build-essential wget curl git fish \
    && chsh -s $(which fish)

RUN mkdir /temp \
    && curl -L https://repo.anaconda.com/archive/Anaconda3-2025.06-0-Linux-x86_64.sh -o /temp/anaconda3.sh \
    && bash /temp/anaconda3.sh -b -p /opt/conda \
    && rm -rf /temp

ENV PATH="/opt/conda/bin:${PATH}"
RUN conda init --all \
    && conda config --set auto_activate_base True

WORKDIR /usr/src/app

CMD [ "sleep", "infinity" ]