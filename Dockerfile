FROM alpine:latest

WORKDIR /app
COPY app.py .

RUN apk add --no-cache python3 py3-pip

RUN pip3 install flask

EXPOSE 5000

CMD ["python3", "app.py"]
