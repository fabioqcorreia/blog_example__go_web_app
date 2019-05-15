FROM circleci/golang:1.9

WORKDIR /app

COPY . .

RUN go get -v -t -d ./... && \
    go build && \
    chmod a+x blog_example__go_web_app
    
EXPOSE 8080

CMD ["./blog_example__go_web_app"]
