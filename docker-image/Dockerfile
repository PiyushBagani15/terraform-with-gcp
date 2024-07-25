# Use an official Python runtime as a parent image, specifying the version explicitly
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /app

# Copy only the necessary files first to take advantage of Docker cache
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Define environment variable
ENV PYTHONUNBUFFERED=1

# Create a non-root user and switch to that user
RUN adduser -D appuser
USER appuser

# Run the application
CMD ["python", "main.py"]
