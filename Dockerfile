from golang:alpine

ENV GO111MODULE=auto\
    CGO_ENABLED=0\
    GOOS=linux\
    GOARCH=amd64\
    GOPROXY="https://goproxy.cn,direct"

WORKDIR ./

COPY . .

RUN go build -o httpserver .

EXPOSE 8080

CMD ["httpserver"]
