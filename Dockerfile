FROM openjdk:latest
WORKDIR /application
COPY Os.java .
RUN javac Os.java
CMD ["java", "Os"]