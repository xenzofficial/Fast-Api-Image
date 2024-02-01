# Use the official Python image as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /

# Copy the application files into the working directory
COPY . /

# Install the application dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN python main.py

# Define the entry point for the container
#CMD ["Flask", "run", "--host=0.0.0.0"]
