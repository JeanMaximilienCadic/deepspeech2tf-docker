docker rmi -f jcadic/deespeech:tensorflow
docker build . -t jcadic/deespeech:tensorflow

docker stop jcadic-deepspeech_tensorflow
docker rm jcadic-deespeech_tensorflow

export DATA_DIR="/mnt/cdata/ASR/en/librispeech"
docker run -it --name jcadic-deepspeech_tensorflow -v $DATA_DIR:/tmp/librispeech jcadic/deespeech:tensorflow
