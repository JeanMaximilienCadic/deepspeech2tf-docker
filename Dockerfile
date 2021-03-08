FROM python:3.6

WORKDIR /workspace

RUN git clone https://github.com/tensorflow/models
WORKDIR /workspace/models/research/deep_speech

RUN apt update -y && apt install sox -y
RUN pip install -r requirements.txt
RUN pip install tensorflow absl-py sox

CMD ["sh", "run_deep_speech.sh"]
