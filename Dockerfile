FROM golang:latest

RUN apt-get update && apt-get install -y git --no-install-recommends \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /go/src/app
RUN git clone https://github.com/BasiliskLabs/qr-platform.git
WORKDIR /go/src/app/qr-platform

RUN go-wrapper download
RUN go-wrapper install

ARG redirect

EXPOSE 80
RUN ["/bin/bash", "-c", "echo $redirect > ./redirect.json"]


CMD ["go-wrapper", "run"]
