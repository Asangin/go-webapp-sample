FROM golang:1.18-bullseye

# RUN apk add git

RUN mkdir /src
ADD . /src
WORKDIR /src

RUN go build main.go

CMD ./main