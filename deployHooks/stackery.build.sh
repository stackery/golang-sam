#!/bin/sh

set -e
mkdir -p .aws-sam/build/src/

cp .stackery/template.yaml .aws-sam/build/template.yaml

( cd src/Function && make )

rm -rf .aws-sam/build/src/Function
cp -r src/Function .aws-sam/build/src/Function
