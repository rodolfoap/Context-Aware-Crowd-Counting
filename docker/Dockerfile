FROM floydhub/pytorch:1.0.0-gpu.cuda9cudnn7-py2.39
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt -y install git curl unzip cmake build-essential vim python-pip unzip wget libgtk2.0-dev python-tk
RUN python -m pip install --upgrade cryptography pyopenssl pip
WORKDIR /workspace
