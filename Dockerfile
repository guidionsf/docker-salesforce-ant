FROM circleci/openjdk:11

RUN sudo apt-get install -y ant

RUN SF_TEMP_DIR=$HOME/.tmp/salesforce \
  && mkdir -p $SF_TEMP_DIR \
  && wget -q $"https://gs0.salesforce.com/dwnld/SfdcAnt/salesforce_ant_41.0.zip" -O $SF_TEMP_DIR/ant.zip \
  && unzip -d $SF_TEMP_DIR/ant $SF_TEMP_DIR/ant.zip \
  && cp $SF_TEMP_DIR/ant/ant-salesforce.jar $ANT_HOME/lib/ant-salesforce.jar \
  && rm -rf $SF_TEMP_DIR