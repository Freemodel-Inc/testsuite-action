#!/bin/bash

set -eu

echo running testsuite

# download and run the scenario tool
#
aws s3 cp s3://freemodel-artifacts-485660304150-us-west-2/scenarioql/main/latest/scenarioql .
chmod +x scenarioql

./scenarioql --version
echo "./scenarioql --concurrency 12 --dir ${DIR} --endpoint ${ENDPOINT} --no-fail-on-error"
./scenarioql --concurrency 12 --dir "${DIR}" --endpoint "${ENDPOINT}" --no-fail-on-error

find .

