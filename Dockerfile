FROM circleci/openjdk:11

RUN sudo apt-get install -y ant

RUN SF_ANT_VERSION=41.0 \
  && SF_ANT_BINARY_URL="https://gs0.salesforce.com/dwnld/SfdcAnt/salesforce_ant_$SF_ANT_VERSION.zip" \
  && SF_LIB_DIRECTORY=$HOME/.salesforce \
  && SF_ANT_FILENAME=ant-salesforce.jar \
  && SF_TEMP_DIR=$HOME/.tmp/salesforce \
  && mkdir -p $SF_TEMP_DIR \
  && mkdir -p $SF_LIB_DIRECTORY \
  && wget -q $SF_ANT_BINARY_URL -O $SF_TEMP_DIR/ant.zip \
  && unzip -d $SF_TEMP_DIR/ant $SF_TEMP_DIR/ant.zip \
  && cp $SF_TEMP_DIR/ant/ant-salesforce.jar $SF_LIB_DIRECTORY/$SF_ANT_FILENAME \
  && rm -rf $SF_TEMP_DIR