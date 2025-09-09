FROM python:3.8-slim-bookworm
WORKDIR /app
COPY . /app

#RUN apt update && apt install awscli 

RUN apt update && apt  install -y awscli

RUN pip install -r requirements.txt
CMD ["python3", "app.py"]

