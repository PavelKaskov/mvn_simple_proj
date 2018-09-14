#! /bin/sh

export JAVA_HOME="/src/java8"

export ENCODING="UTF-8"
export LOCALE="en_US"

export CATALINA_OPTS="$CATALINA_OPTS -Xms64m"
export CATALINA_OPTS="$CATALINA_OPTS -Xmx512m"

export J_OPTS="$J_OPTS -Xloggc:$CATALINA_HOME/logs/gc.log"

export CATALINA_PID="$CATALINA_HOME/bin/pid"

export CATALINA_OPTS="$CATALINA_OPTS $J_OPTS"

echo 'CATALINA_OPTS:' $CATALINA_OPTS
