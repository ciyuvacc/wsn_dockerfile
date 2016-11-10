#FROM  docker.io/centos:6.6
#FROM  busybox:latest
FROM  reg.mydomain.com/tomcat/tomcat7
MAINTAINER  WangSen  v2
#ADD  jdk  /jre
ADD  run.sh  /usr/local/bin
ADD  client.xml  /data/appdatas/cat
ADD  was-dubbo-web-server  /data/dubbo/was-dubbo-web-server
ADD  dubbosh  /data/dubbo/dubbosh
ADD  logs  /data/dubbo/logs
ENV JAVA_HOME /jre
ENV PATH $PATH:$JAVA_HOME/bin
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
