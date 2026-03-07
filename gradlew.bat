@echo off

SET DEFAULT_JVM_OPTS=""

SET APP_NAME=gradlew
SET APP_BASE_NAME=%~n0

REM Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
SET DEFAULT_JVM_OPTS=

REM Use the maximum available memory, or set it to the specified amount (e.g. 1024m)
SET MAX_HEAP_SIZE=

REM Use the predefined JVM options not covered by versioning (e.g. -Xms, -Xmx, etc.)
SET JVM_OPTS=

REM Use the Gradle wrapper
IF "%GRADLE_HOME%"=="" SET GRADLE_HOME=%~dp0\..\..\gradle

SET CLASSPATH=
IF EXIST "%GRADLE_HOME%\gradle\wrapper\gradle-wrapper.jar" (
    SET CLASSPATH=%CLASSPATH%;%GRADLE_HOME%\gradle\wrapper\gradle-wrapper.jar
)

REM Determine the operating system
FOR /f "tokens=*" %%i IN ('ver') DO SET SYSTEM_VER=%%i

REM Check if we are on Windows or Unix
IF NOT "%SYSTEM_VER%"=="" SET machine=Windows

REM Execute gradle with appropriate parameters
"%GRADLE_HOME%\bin\gradle" %*
