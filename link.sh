#!/bin/bash

$JAVA_HOME/bin/jlink --module-path build/libs:$JAVA_HOME/jmods --add-modules com.haulmont.demos.powercli --launcher \
  launch=com.haulmont.demos.powercli/com.haulmont.demos.powercli.Application --output build/dist \
  --strip-debug --compress 2 --no-header-files --no-man-pages

# with guava

$JAVA_HOME/bin/jlink --module-path build/install/power-cli/lib:$JAVA_HOME/jmods \
  --add-modules com.haulmont.demos.powercli --launcher \
  launch=com.haulmont.demos.powercli/com.haulmont.demos.powercli.Application --output build/dist \
  --strip-debug --compress 2 --no-header-files --no-man-pages

# jdeps

$JAVA_HOME/bin/jdeps --module-path . --generate-module-info . guava-26.0-jre.jar

# patch modules

$JAVA_HOME/bin/javac -p build/install/power-cli/lib -d build/modules \
  --patch-module com.google.common=build/install/power-cli/lib/guava-26.0-jre.jar \
  bundles/com.google.common/module-info.java

# jar patch

$JAVA_HOME/bin/jar uf build/install/power-cli/lib/guava-26.0-jre.jar -C build/modules module-info.class