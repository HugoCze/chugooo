FROM python:3.9-slim

WORKDIR /app

COPY req.txt .
RUN pip install -r req.txt

COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]