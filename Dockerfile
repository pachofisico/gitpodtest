# Use Ubuntu based image
# FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-20.04


# Use provided gitpod image
FROM gitpod/workspace-full

# Update repositories and install OpenJDK 21
RUN sudo apt-get update && sudo apt-get install -y openjdk-21-jdk

# Configure Java 21 alternatives
RUN sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-21-openjdk-amd64/bin/java 1 && \
    sudo update-alternatives --set java /usr/lib/jvm/java-21-openjdk-amd64/bin/java

# Configure JAVA_HOME and add to PATH
ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

