sudo apt-get update
sudo apt-get install -y openjdk-21-jdk
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
source ~/.bashrc
export PATH=$JAVA_HOME/bin:$PATH
java --version