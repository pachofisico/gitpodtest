sudo apt-get update
sudo apt-get install -y openjdk-21-jdk
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-21-openjdk-amd64/bin/java 1
sudo update-alternatives --set java /usr/lib/jvm/java-21-openjdk-amd64/bin/java
unset JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH
source ~/.bashrc
echo $JAVA_HOME
java -version