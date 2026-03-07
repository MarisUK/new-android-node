#!/bin/sh

DEFAULT_JVM_OPTS=""

APP_NAME="gradlew"
APP_BASE_NAME=`basename "$0"`

CLASSPATH=""
# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS=""

JAVA_OPTS="$DEFAULT_JVM_OPTS $JAVA_OPTS"

# Use the maximum available memory, or set it to the specified amount (e.g. 1024m)
MAX_HEAP_SIZE=""

# Use the predefined JVM options not covered by versioning (e.g. -Xms, -Xmx, etc.)
JVM_OPTS=""

# Use the Gradle wrapper
if [ -z "$GRADLE_HOME" ]; then
  THIS_DIR="$(dirname "$0")"
  if [ -f "$THIS_DIR/gradle/wrapper/gradle-wrapper.jar" ]; then
    CLASSPATH="$CLASSPATH:$THIS_DIR/gradle/wrapper/gradle-wrapper.jar"
    exec "$THIS_DIR/../../.."/build-tools/gradle 