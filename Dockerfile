FROM golang:1.10

RUN apt-get update
RUN apt-get -y install curl g++ make bzip2 unixodbc unixodbc-dev

WORKDIR /go/src/simple_golang_app
COPY . .

#installing dep and vendors
RUN go get -v
RUN go build

EXPOSE 8081

ENTRYPOINT ["simple_golang_app"]