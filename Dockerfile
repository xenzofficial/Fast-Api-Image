# Use the official Python image as the base image
FROM python:3.11

# Set the working directory in the container
WORKDIR /

# Copy the application files into the working directory
COPY . /

RUN python3 main.py
