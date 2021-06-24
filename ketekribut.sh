#!/bin/sh

COUNTER=20
until [  $COUNTER -lt 10 ]; do
 
TOKEN="d99c43865c66ddc87c5d4b88789af211b7c425d9466f5baa5c" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
~/.buildkite-agent/bin/buildkite-agent start
 
     echo COUNTER $COUNTER
     let COUNTER-=1
done
