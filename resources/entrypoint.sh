#!/bin/sh
set -e -x

# Launching confd to generate templates
confd -onetime -backend env

# Launching tomcat
catalina.sh run
