#!/bin/bash

function die() {
  echo $*
  exit 1
}

mvn package -Dmaven.test.skip=true || die "Could not package"
cp target/littleproxy-1.1.3-SNAPSHOT.jar ~/work/odkl-web-performance/libs/littleproxy-1.1.3.1.jar
