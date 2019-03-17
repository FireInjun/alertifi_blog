#!/bin/sh

COVERALLS_REPO_TOKEN=$COVERALLS_REPO_TOKEN
npm jest --coverage 
cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js 
rm -rf ./coverage
