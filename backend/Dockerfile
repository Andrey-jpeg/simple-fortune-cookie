FROM golang:1.16-alpine

WORKDIR /app

COPY . .

RUN go build

CMD REDIS_DNS="redis" go run backend