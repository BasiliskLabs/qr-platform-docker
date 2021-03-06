FROM golang:latest

RUN apt-get update && apt-get install -y git --no-install-recommends \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /go/src/app
RUN git clone https://github.com/BasiliskLabs/qr-platform.git
WORKDIR /go/src/app/qr-platform

RUN go-wrapper download
RUN go-wrapper install

EXPOSE 80
COPY ./entrypoint.sh .

RUN chmod +x entrypoint.sh

CMD ["./entrypoint.sh"]
