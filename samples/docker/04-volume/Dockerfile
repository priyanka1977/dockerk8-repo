# Parent image
from ubuntu:jammy

# Install jdk
RUN apt update && \
    apt install -y default-jdk

WORKDIR /mnt/local/java

CMD ["HelloWorld.java"]
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
