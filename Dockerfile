# Use the official Alpine image from the Docker Hub
FROM alpine:latest

# Set the maintainer label (optional)
LABEL maintainer="yourname@example.com"

# Install basic utilities
RUN apk update && \
    apk add --no-cache bash curl

# Set environment variables (optional)
ENV MY_ENV_VAR /my/env/var

# Create a directory and set it as the working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . /usr/src/app

# Expose port 8080 (if your application uses it)
EXPOSE 8080

# Command to run the application (this example just runs a bash shell)
CMD ["bash"]
