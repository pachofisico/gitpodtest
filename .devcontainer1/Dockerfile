# Use Ubuntu based image
# FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-20.04

# Update repositories and install OpenJDK 21
RUN apt-get update && \
    apt-get install -y openjdk-21-jdk

# Configure environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Guarantee that the container always use Java 21
RUN update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-21-openjdk-amd64/bin/java 1 && \
    update-alternatives --set java /usr/lib/jvm/java-21-openjdk-amd64/bin/java

# Verify the installation
RUN java -version
