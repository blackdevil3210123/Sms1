FROM python:3.11-slim

WORKDIR /app

COPY repo /app

RUN if [ -f "/app/requirements.txt" ]; then pip install --no-cache-dir -r /app/requirements.txt; fi

CMD ["python", "main.py"]
