# Base image
FROM python:3.9-slim
 
# Set working directory
WORKDIR /app
 
# Copy application code
COPY . .
 
# Install dependencies
RUN pip install --no-cache-dir flask
 
# Expose the Flask application port
EXPOSE 5000
 
# Command to run the application
CMD ["python", "app.py"]