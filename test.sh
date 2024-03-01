#!/usr/bin/env bash

set -e

echo
echo "************************"
echo "************************"
echo

cd /my_package
VERSION_PACKAGE=$(jq '.version' node_modules/@types/react/package.json)
echo "Version in package: $VERSION_PACKAGE"


cd /my_app
VERSION_APP=$(jq '.version' node_modules/@types/react/package.json)
echo "Version in app: $VERSION_APP"


if [[ "$VERSION_PACKAGE" == "$VERSION_APP" ]]; then
    echo "OK"
else
    echo "Failure"

    npm ls @types/react

    exit 1
fi
