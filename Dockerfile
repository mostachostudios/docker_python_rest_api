FROM amd64/python:3-alpine

ADD app/ /app
WORKDIR /app
RUN apt-get update
RUN pip install --no-cache-dir -r requirements.txt
CMD python rest_app.py
