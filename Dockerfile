FROM python:3.7-slim

WORKDIR /microservice

# install python dependencies
RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt

ENV MODEL_LINK "https://drive.google.com/uc?id=1NQsRtoii30h-MkkFbipGKDsrPmQTEY8Y&export=download"
ENV ARTICLE_EMBED "https://drive.google.com/uc?id=1T6qhVNpnzhOcJzM5CIH4sZ52OAumIXs3&export=download"
ENV ARTICLE_EMBED_PATH "microservice/models/articles_embeddings.npy"
ENV MODEL_PATH "microservice/models/graph_model.pkl"

RUN mkdir models
COPY microservice ./microservice
