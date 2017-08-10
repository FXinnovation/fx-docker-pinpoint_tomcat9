#!/bin/sh
CATALINA_OPTS="$CATALINA_OPTS -javaagent:${PINPOINT_AGENT_PATH}/pinpoint-agent/pinpoint-bootstrap-${PINPOINTAGENT_VERSION}.jar"
CATALINA_OPTS="$CATALINA_OPTS -Dpinpoint.agentId=$(printf ${HOSTNAME} | tail -c 24)"
CATALINA_OPTS="$CATALINA_OPTS -Dpinpoint.applicationName=${APPLICATION}-${ENV}"
