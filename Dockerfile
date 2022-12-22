FROM python:3.12.0a3

WORKDIR /tmp

COPY ./deep_speech/requirements.txt /tmp

RUN apt update -y && apt install sox -y
RUN pip install -r requirements.txt
RUN pip install tensorflow absl-py sox

WORKDIR /workspace

CMD ["sh", "run_deep_speech.sh"]
