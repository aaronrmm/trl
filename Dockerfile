FROM pytorch/pytorch:2.0.0-cuda11.7-cudnn8-devel
WORKDIR /project
#RUN pip install numpy --pre torch[dynamo] --force-reinstall --extra-index-url https://download.pytorch.org/whl/nightly/cu117
RUN apt-get -y update
RUN apt-get install build-essential -y
RUN apt-get -y install git
RUN apt-get install wget -y
RUN apt update
RUN apt install -y git
RUN pip install PyYAML
RUN pip install jupyterlab

COPY ./requirements.txt requirements.txt
RUN  python -m pip install -r requirements.txt