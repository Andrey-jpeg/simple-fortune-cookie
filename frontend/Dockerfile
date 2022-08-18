FROM golang:1.16-alpine

WORKDIR /app

COPY . .

RUN go build

CMD BACKEND_DNS="backend" go run frontend