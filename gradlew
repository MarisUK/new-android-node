#!/bin/sh

DEFAULT_JVM_OPTS=""

APP_NAME="gradlew"
APP_BASE_NAME=`basename "$0"`

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS=""

JAVA_OPTS="$DEFAULT_JVM_OPTS $JAVA_OPTS"

# Use the maximum available memory, or set it to the specified amount (e.g. 1024m)
MAX_HEAP_SIZE=""

# Use the predefined JVM options not covered by versioning (e.g. -Xms, -Xmx, etc.)
JVM_OPTS=""

# Use the default gradle installation folder
if [ -z "$GRADLE_HOME" ]; then
  GRADLE_HOME="/usr/share/gradle"
fi

# Determine the operating system
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}";;
esac

# Determine if this is a Cygwin or MinGw environment or we are running on Windows
if [ "${machine}" = "Cygwin" ] || [ "${machine}" = "MinGw" ]; then
    GRADLE_EXEC="${GRADLE_HOME}/bin/gradle.cmd"
else
    GRADLE_EXEC="${GRADLE_HOME}/bin/gradle"
fi

# Execute gradle with appropriate parameters
"${GRADLE_EXEC}" "$@"