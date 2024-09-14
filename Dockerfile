# Use Baseimage from python
FROM python:3.8-slim-buster

# Workdirectory
WORKDIR /app

# Copy the dependencies file first to take advantage of Docker's cache
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the container
COPY . .

# Expose the port of the app
EXPOSE 5000

# Defines the default command to run the application
CMD ["python3", "app.py"]

