# Parent image
from ubuntu:jammy

# Install jdk
RUN apt update && \
    apt install -y default-jdk

RUN mkdir -p /usr/build/java
COPY ./webapp.jar /usr/build/java

CMD ["java","-jar","/usr/build/java/webapp.jar"]

