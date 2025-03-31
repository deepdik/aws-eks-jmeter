FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app /app
CMD ["gunicorn", "-w", "3", "-b", "0.0.0.0:5000", "app:app"]
