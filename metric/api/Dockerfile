FROM golang:1.21.0-alpine3.18 as build
WORKDIR /app
COPY . .
RUN go mod tidy
RUN go build -o api .

FROM alpine:3.18
WORKDIR /app
COPY --from=build /app/api .
EXPOSE 8080
CMD [ "./api" ]