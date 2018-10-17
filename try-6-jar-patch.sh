#!/bin/bash

$JAVA_HOME/bin/jar uf build/install/power-cli/lib/guava-26.0-jre.jar -C build/modules module-info.class
