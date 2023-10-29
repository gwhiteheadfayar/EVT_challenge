#!/bin/bash

# Build the Docker image from the Dockerfile
docker build -t your-nginx-webserver .

# Run the Docker container
docker run -d -p 443:443 your-nginx-webserver
