FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S ardhgroup
RUN adduser -S -D -h /app ardhuser ardhgroup
RUN chown -R ardhuser:ardhgroup /app

USER ardhuser

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go