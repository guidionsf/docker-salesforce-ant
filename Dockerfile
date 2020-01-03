FROM circleci/openjdk:11

USER root

RUN apt-get -y install ant && \
    wget -q "https://gs0.salesforce.com/dwnld/SfdcAnt/salesforce_ant_41.0.zip" -O /tmp/ant-salesforce.zip && \
    unzip -d /tmp/ant-salesforce /tmp/ant-salesforce.zip && \
    cp /tmp/ant-salesforce/ant-salesforce.jar $ANT_HOME/lib/ant-salesforce.jar && \
    rm -rf /tmp/ant-salesforce*;
