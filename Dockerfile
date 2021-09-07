FROM python:3.8-buster

ENV APP_ROOT /usr/a-life
WORKDIR $APP_ROOT

RUN apt-get update && \
    apt-get install -y less procps gcc g++ libgl1-mesa-dev python3-pyqt5 pyqt5-dev-tools qttools5-dev-tools libopencv-dev && \
    # apt-get install -y less procps gcc g++ libgl1-mesa-dev libopencv-dev && \
    apt-get clean

ADD requirements.txt $APP_ROOT

RUN pip install --upgrade pip &&\
    pip install -r requirements.txt

EXPOSE 6080
