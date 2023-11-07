FROM cimg/openjdk:21.0.0

USER root

RUN rm -Rf /etc/ssl/certs/java/
RUN mkdir /etc/ssl/certs/java/
RUN apt-get update
RUN apt-get install -y ant

RUN wget -q "https://gs0.salesforce.com/dwnld/SfdcAnt/salesforce_ant_59.0.zip" -O /tmp/ant.zip \
  && unzip -d /tmp/ant /tmp/ant.zip \
  && cp /tmp/ant/ant-salesforce.jar $ANT_HOME/lib/ant-salesforce.jar \