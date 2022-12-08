FROM python:3.7-slim

WORKDIR /microservice

# install python dependencies
RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt

ENV MODEL_LINK "https://drive.google.com/uc?id=1NQsRtoii30h-MkkFbipGKDsrPmQTEY8Y&export=download"
ENV ARTICLE_EMBED "https://drive.google.com/uc?id=1T6qhVNpnzhOcJzM5CIH4sZ52OAumIXs3&export=download"
ENV ARTICLE_EMBED_PATH "microservice/models/articles_embeddings.npy"
RUN mkdir models
COPY microservice ./microservice

#$env:MODEL_LINK = "https://drive.google.com/uc?id=1NQsRtoii30h-MkkFbipGKDsrPmQTEY8Y&export=download"
#$env:ARTICLE_EMBED = "https://drive.google.com/uc?id=1T6qhVNpnzhOcJzM5CIH4sZ52OAumIXs3&export=download"
#$env:ARTICLE_EMBED_PATH = "microservice/models/articles_embeddings.npy"
#$env:MODEL_PATH = "microservice/models/graph_model.pkl"
