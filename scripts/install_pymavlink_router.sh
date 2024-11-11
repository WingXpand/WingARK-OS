#!/bin/bash
source $(dirname $BASH_SOURCE)/functions.sh

echo "Installing pymavlink-router"

service_uninstall pymavlink-router

pushd .
cd $PROJECT_ROOT/submodules/pymavlink-router
./install.sh
popd

service_add_manifest pymavlink-router

service_install pymavlink-router