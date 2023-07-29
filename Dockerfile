# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Install required dependencies
RUN pip install mlflow psycopg2-binary

# Expose the default MLflow port
EXPOSE 5000

# Start MLflow UI by default
ENTRYPOINT ["mlflow", "ui", "--host", "0.0.0.0"]
