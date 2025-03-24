mkdir data
mkdir models

# download NQ dataset
wget https://dl.fbaipublicfiles.com/dpr/data/retriever/biencoder-nq-train.json.gz -P data
wget https://dl.fbaipublicfiles.com/dpr/data/retriever/biencoder-nq-dev.json.gz -P data

# unzip the dataset
gunzip data/biencoder-nq-train.json.gz
gunzip data/biencoder-nq-dev.json.gz

# rename the dataset
mv data/biencoder-nq-train.json data/nq-train.json
mv data/biencoder-nq-dev.json data/nq-dev.json

# Download the BART model
wget https://dl.fbaipublicfiles.com/fairseq/models/bart.large.tar.gz -P models/BART
tar -xvzf models/BART/bart.large.tar.gz -C models/BART
rm models/BART/bart.large.tar.gz