# Use the official Python image from the Docker Hub
FROM python:3.11-slim

# Set environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=7000
ENV FLASK_DEBUG=1

# Install dependencies
RUN pip install --upgrade pip
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

# Set the working directory
WORKDIR /app

# Copy the application code
COPY . /app

# Expose the port the app runs on
EXPOSE 7000

# Run the application
ENTRYPOINT ["flask", "run"]

