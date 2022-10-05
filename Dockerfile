FROM docker.io/ubuntu:latest 

ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Basic Foundations
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq curl gnupg jq nano zip unzip wget file locales sudo ca-certificates lsb-release python3 python3-pip python3-venv python3-setuptools libicu-dev

# Install Dependencies
RUN pip3 --no-cache-dir install --upgrade absl-py attrs contourpy cycler fonttools
