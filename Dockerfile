FROM  openjdk:8
COPY . /src/java
WORKDIR /src/java
RUN ["javac","HelloPoe.java"]
ENTRYPOINT ["java","HelloPoe"]
