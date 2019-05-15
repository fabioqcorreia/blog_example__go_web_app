FROM golang:1.12-alpine

WORKDIR /app

COPY . .

RUN apk update && \
    apk add git && \
    go get -v -t -d ./... && \
    go build -o main && \
    chmod a+x main
    
EXPOSE 8080

CMD ["/app/main"]
