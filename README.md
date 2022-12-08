# Recomendation_service

### To run without Docker:
Set the env variables:
~~~
export MODEL_LINK="https://drive.google.com/uc?id=1NQsRtoii30h-MkkFbipGKDsrPmQTEY8Y&export=download"
export ARTICLE_EMBED="https://drive.google.com/uc?id=1T6qhVNpnzhOcJzM5CIH4sZ52OAumIXs3&export=download"
export ARTICLE_EMBED_PATH = "microservice/models/articles_embeddings.npy"
export MODEL_PATH = "microservice/models/graph_model.pkl"
~~~
Run in console:
~~~
uvicorn microservice.main:app
~~~
Service will be available at http://127.0.0.1:8000
