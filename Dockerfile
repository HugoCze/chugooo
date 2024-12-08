FROM python:3.9-slim

WORKDIR /app

COPY req.txt .

RUN pip install -r req.txt

COPY . .

EXPOSE 5000

ENV FLASK_APP=app.py
ENV FLASK_DEBUG=1

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"] 