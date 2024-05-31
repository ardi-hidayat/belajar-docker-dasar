# Use the Go 1.18 image based on Alpine Linux

# Use the Go 1.18 image based on Alpine Linux
FROM golang:1.18-alpine

# Set environment variables
ENV APP_PORT=8080
ENV APP_DATA=/logs

# Create the directory specified by APP_DATA
RUN mkdir $APP_DATA

# Create a directory named 'app'
RUN mkdir /app

# Copy the main.go file into the '/app' directory
COPY main.go /app

# Expose the port specified by the APP_PORT environment variable
EXPOSE $APP_PORT
VOLUME $APP_DATA

# Run the application using the 'go run' command
CMD go run /app/main.go
