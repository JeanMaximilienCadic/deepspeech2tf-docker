export DATA_DIR="/mnt/cdata/ASR/en/librispeech"
docker rmi -f jcadic/deespeech:tensorflow
docker build . -t jcadic/deespeech:tensorflow
docker run -it --rm --name jcadic-deepspeech_tensorflow -v $(pwd)/deep_speech:/workspace -v $DATA_DIR:/tmp jcadic/deespeech:tensorflow
