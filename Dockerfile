FROM tensorflow/tensorflow:latest-py3

COPY ./requirements.txt /
RUN pip install -r requirements.txt
