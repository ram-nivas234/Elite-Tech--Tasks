# Use Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files
COPY app.py /app

# Run the application
CMD ["python", "app.py"]

