# Use the official Python image from the Docker Hub
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt requirements.txt

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Expose port 5000 for the app
EXPOSE 5000

# Define the command to run the app
CMD ["python", "app.py"]

