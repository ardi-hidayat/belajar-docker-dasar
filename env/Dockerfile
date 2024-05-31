# FROM golang:1.18-alpine
# ENV APP_PORT:8080

# RUN mkdir app
# COPY main.go app

# EXPOSE ${APP_PORT}
# CMD go run app/main.go

# Use the Go 1.18 image based on Alpine Linux
FROM golang:1.18-alpine

# Set environment variables
ENV APP_PORT=8080

# Create a directory named 'app'
RUN mkdir /app

# Copy the main.go file into the '/app' directory
COPY main.go /app

# Expose the port specified by the APP_PORT environment variable
EXPOSE $APP_PORT

# Run the application using the 'go run' command
CMD go run /app/main.go
