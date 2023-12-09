FROM maven:3.8.4-openjdk-11 AS builder

WORKDIR /application
COPY Os.java .
RUN javac Os.java

FROM openjdk:11
WORKDIR /application
COPY --from=builder /application/Os.class .

CMD ["java", "Os"]