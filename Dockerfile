# First docker file from lengmo
# VERSION 1.0.0
# Author: lengmo

FROM tomcat:7.0.77

MAINTAINER lengmo@towantto.com

ENV WORK_CONF_PATH /usr/local/tomcat/conf

ENV SERVER_CONF_FILE_NAME server.xml

ENV TOWANTTO_FILE_NAME towantto.zip

RUN rm $WORK_CONF_PATH/$SERVER_CONF_FILE_NAME

COPY  ./$SERVER_CONF_FILE_NAME $WORK_PATH/

RUN rm /usr/local/tomcat/webapp/ROOT

RUN mkdir /usr/local/tomcat/webapp/ROOT

RUN mv $TOWANTTO_FILE_NAME /usr/local/tomcat/webapp/ROOT

RUN unzip /usr/local/tomcat/webapp/ROOT/$TOWANTTO_FILE_NAME
