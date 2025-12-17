FROM alpine:latest

WORKDIR /app
COPY app.py .
ENV PATH="/opt/venv/bin:$PATH"

RUN apk add --no-cache python3 py3-pip

RUN python3 -m venv /opt/venv && \
      pip3 install flask

EXPOSE 5000

CMD ["python3", "app.py"]
