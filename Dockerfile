FROM tomcat
# What is Tomcat?
#
# Apache Tomcat (or simply Tomcat) is an open source web server and servlet
# container developed by the Apache Software Foundation (ASF). Tomcat implements
# the Java Servlet and the JavaServer Pages (JSP) specifications from Oracle,
# and provides a “pure Java” HTTP web server environment for Java code to run
# in. In the simplest config Tomcat runs in a single operating system process.
# The process runs a Java virtual machine (JVM). Every single HTTP request from
# a browser to Tomcat is processed in the Tomcat process in a separate thread.

MAINTAINER Zacharias Knudsen <zacharias@gisgroup.dk>

# install packages necessary for installation
RUN apt-get update && apt-get -y install \
  unzip

# set environment variables
ENV GS_VERSION 2.7.0
ENV GS_URL http://sourceforge.net/projects/geoserver/files/GeoServer/$GS_VERSION/geoserver-$GS_VERSION-war.zip

# fetch the geoserver web application archive
RUN wget -q $GS_URL -O /tmp/geoserver.zip

# unzip and move into tomcat
RUN unzip -q /tmp/geoserver.zip -d /tmp
RUN mv /tmp/geoserver.war /usr/local/tomcat/webapps/

# parent image runs tomcat
