#!/bin/bash

# with guava

$JAVA_HOME/bin/jlink --module-path build/install/power-cli/lib:$JAVA_HOME/jmods \
  --add-modules com.haulmont.demos.powercli --launcher \
  launch=com.haulmont.demos.powercli/com.haulmont.demos.powercli.Application --output build/dist \
  --strip-debug --compress 2 --no-header-files --no-man-pages
