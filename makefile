glove:
	wget -P ./data/ "http://nlp.stanford.edu/data/glove.840B.300d.zip"
	unzip ./data/glove.840B.300d.zip -d data/glove.840B.300d/
	rm ./data/glove.840B.300d.zip

run:
	python build_data.py
	python train.py
	python evaluate.py
