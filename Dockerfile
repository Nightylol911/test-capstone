FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

ENV FLASK_APP=app.py

CMD [ "python", "app.py", "--host=0.0.0.0"]