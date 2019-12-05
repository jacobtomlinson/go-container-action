FROM golang:1.13 as builder

WORKDIR /app

COPY . /app

RUN CGO_ENABLED=0 go build -ldflags="-w -s" -v -o app .

FROM gcr.io/distroless/static

COPY --from=builder /app/app /app

ENTRYPOINT ["/app"]