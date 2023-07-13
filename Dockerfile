FROM golang:1.19.5
# Set destination for COPY
WORKDIR /app
# Download Go modules
COPY go.mod go.sum ./
RUN go mod download
#Copy the source code
COPY *.go ./
# Build
RUN go build -o /todo-api
# Run
CMD ["/todo-api"]