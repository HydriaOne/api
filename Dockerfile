FROM golang:1.10-alpine

WORKDIR /go/src/app
COPY . .

RUN apk add git
RUN go get -d -v ./...
RUN go install -v ./...
EXPOSE 8000

CMD "app"
