@echo off

SET DEFAULT_JVM_OPTS="-Xms256m -Xmx2048m"
SET APP_NAME=gradlew
SET APP_BASE_NAME=%~n0

REM Use the Gradle wrapper
IF "%GRADLE_HOME%"=="" SET GRADLE_HOME=%~dp0\..\..\gradle

SET CLASSPATH=
IF EXIST "%GRADLE_HOME%\gradle\wrapper\gradle-wrapper.jar" (
    SET CLASSPATH=%CLASSPATH%;%GRADLE_HOME%\gradle\wrapper\gradle-wrapper.jar
)

REM Execute gradle with appropriate parameters
"%GRADLE_HOME%\bin\gradle" %*
