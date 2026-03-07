#!/usr/bin/env sh

##############################################################################
##
# Gradle startup script for UN*X
#
# To execute a Spring Boot application using this script you can use:
#
# ./gradlew bootRun
#
##############################################################################

DEFAULT_JVM_OPTS=""

APP_NAME="gradlew"
APP_BASE_NAME=`basename "$0"`

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.

##############################################################################
# Determine the script location, so we can try to determine the path of the installation.
# IF the link is an OS X/macOS alias, resolve it to the underlying file.

 #export OS=$(uname -s | lowercase)
 #export NATIVE_UNAME=$(uname -s | lowercase)

CLASSPATH=""
JAVA_HOME=

# Use the maximum available memory, or set it to the specified amount (e.g. 1024m)
MAX_HEAP_SIZE=""

JVM_OPTS=""

# Use the Gradle wrapper
if [ -z "$GRADLE_HOME" ]; then
  THIS_DIR="$(dirname "$0")"
  if [ -f "$THIS_DIR/gradle/wrapper/gradle-wrapper.jar" ]; then
    CLASSPATH="$CLASSPATH:$THIS_DIR/gradle/wrapper/gradle-wrapper.jar"
    exec java $JAVA_OPTS -cp $CLASSPATH org.gradle.wrapper.GradleWrapperMain "$@"
  fi
fi

exec "$GRADLE_HOME/bin/gradle" "--daemon" "$@"
