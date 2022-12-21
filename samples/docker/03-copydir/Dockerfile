# Parent image
from ubuntu:jammy

# Install jdk
RUN apt update && \
    apt install -y default-jdk

RUN mkdir -p /usr/src/java
WORKDIR /usr/src/java

COPY ./ /usr/

CMD ["HelloWorld.java"]
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
