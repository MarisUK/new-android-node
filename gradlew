#!/usr/bin/env sh

# Gradle startup script for UN*X
DEFAULT_JVM_OPTS="-Xms256m -Xmx2048m"
APP_NAME="gradlew"
APP_BASE_NAME=`basename "$0"`

# Determine the script location
CLASSPATH=""
JAVA_HOME=""

# Use the Gradle wrapper
if [ -z "$GRADLE_HOME" ]; then
  THIS_DIR="$(dirname "$0")"
  if [ -f "$THIS_DIR/gradle/wrapper/gradle-wrapper.jar" ]; then
    CLASSPATH="$CLASSPATH:$THIS_DIR/gradle/wrapper/gradle-wrapper.jar"
    exec java $JAVA_OPTS -cp $CLASSPATH org.gradle.wrapper.GradleWrapperMain "$@"
  fi
fi

exec "$GRADLE_HOME/bin/gradle" "--no-daemon" "$@"