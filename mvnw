#!/bin/sh
# Maven Wrapper script
set -e

MAVEN_PROJECTBASEDIR="${MAVEN_BASEDIR:-$(cd "$(dirname "$0")" && pwd)}"
MAVEN_WRAPPER_JAR="$MAVEN_PROJECTBASEDIR/.mvn/wrapper/maven-wrapper.jar"
MAVEN_WRAPPER_PROPERTIES="$MAVEN_PROJECTBASEDIR/.mvn/wrapper/maven-wrapper.properties"

# Download wrapper jar if not present
if [ ! -f "$MAVEN_WRAPPER_JAR" ]; then
    WRAPPER_URL=$(grep 'wrapperUrl' "$MAVEN_WRAPPER_PROPERTIES" | cut -d'=' -f2-)
    echo "Downloading Maven Wrapper..."
    curl -sL "$WRAPPER_URL" -o "$MAVEN_WRAPPER_JAR"
fi

# Download Maven if not present
DIST_URL=$(grep 'distributionUrl' "$MAVEN_WRAPPER_PROPERTIES" | cut -d'=' -f2-)
MAVEN_HOME="$MAVEN_PROJECTBASEDIR/.mvn/wrapper/dists"
MAVEN_DIR="$MAVEN_HOME/apache-maven-3.9.6"

if [ ! -d "$MAVEN_DIR" ]; then
    echo "Downloading Apache Maven 3.9.6..."
    mkdir -p "$MAVEN_HOME"
    curl -sL "$DIST_URL" -o "$MAVEN_HOME/maven.zip"
    unzip -q "$MAVEN_HOME/maven.zip" -d "$MAVEN_HOME"
    rm "$MAVEN_HOME/maven.zip"
fi

exec "$MAVEN_DIR/bin/mvn" "$@" -Dmaven.multiModuleProjectDirectory="$MAVEN_PROJECTBASEDIR"
