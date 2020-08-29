FROM tensorflow/tensorflow:1.8.0-py3

RUN apt-get update
RUN pip3 install --upgrade setuptools
RUN pip3 install --upgrade pip

COPY ./requirements.txt ./
RUN pip install -r requirements.txt

RUN apt-get install wget
RUN apt-get install unzip
RUN apt install -y libgl1-mesa-glx
RUN apt-get install -y python3-tk