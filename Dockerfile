FROM golang:1.19 as builder
ENV GO111MODULE=on
ENV GOPROXY=https://goproxy.cn
ADD . /go/src/lanse/
WORKDIR /go/src/lanse/
RUN go build -o lanse main.go
CMD "./lanse"
#CMD ["/bin/sh", "-c", "./coupon-tools 1>>coupon-tools.log 2>&1"]
