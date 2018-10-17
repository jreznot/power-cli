#!/bin/bash

$JAVA_HOME/bin/javac -p build/install/power-cli/lib -d build/modules \
  --patch-module com.google.common=build/install/power-cli/lib/guava-26.0-jre.jar \
  bundles/com.google.common/module-info.java
