# official Python runtime as the base image
FROM python:3.9-slim

# working directory in the container
WORKDIR /app

# Copying the requirements file into the container
COPY requirements.txt .

# Installing dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copying the rest of the application code
COPY . .

# Expose port 5000 for the Flask app
EXPOSE 5000

# Running the app
CMD ["python", "app.py"]