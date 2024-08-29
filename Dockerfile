FROM python:3.9.19


WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 7000

CMD ["gunicorn", "-b", "0.0.0.0:5000", "run:app"]
