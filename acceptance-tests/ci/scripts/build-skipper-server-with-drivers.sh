#!/bin/bash
set -e

source $(dirname $0)/common.sh
repository=$(pwd)/distribution-repository

pushd git-repo > /dev/null
pushd $BASE_PATH > /dev/null
pushd custom-apps/skipper-server-with-drivers$APP_VERSION > /dev/null
./gradlew clean build install -Dmaven.repo.local=${repository}
popd > /dev/null
popd > /dev/null
popd > /dev/null
