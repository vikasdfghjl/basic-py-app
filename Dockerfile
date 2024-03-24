FROM python:3.11-slim

WORKDIR /app

RUN apt update -y

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 3100

CMD [ "python3", "app.py" ]