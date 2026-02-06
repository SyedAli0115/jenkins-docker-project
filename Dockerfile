FROM python:3.11-slim
WORKDIR /app
COPY syedali.py .
CMD ["python", "syedali.py"]
