FROM golang:1.10

RUN apt-get update
#RUN apt-get -y install curl g++ make bzip2 unixodbc unixodbc-dev

WORKDIR /go/src/simple_golang_app
ADD . .

#installing dep and vendors
RUN go get -v
RUN go build -o app

VOLUME ["/go/src/simple_golang_app"]

EXPOSE 8081

ENTRYPOINT ["/go/src/simple_golang_app/app"]