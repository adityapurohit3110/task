

FROM golang:1.21.5

WORKDIR /go/src/app

COPY . .

RUN go build -o main .

EXPOSE 8000

CMD ["./main"]

