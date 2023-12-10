# Use an official Golang runtime as a parent image
FROM golang:1.21.5

WORKDIR /go/src/app

# Copy the go.mod and go.sum files to the container
COPY go.mod .

# Download dependencies
RUN go mod download

# Copy the rest of the application code
COPY . .

# Build the Go app
RUN go build -o main .

# Expose port 8000 to the outside world
EXPOSE 8000

# Command to run the executable
CMD ["./app/main"]
