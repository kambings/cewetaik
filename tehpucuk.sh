#!/bin/sh

COUNTER=20
until [  $COUNTER -lt 10 ]; do
 
TOKEN="17a491300ae24641bb6c67194d0fd8e19d5d0e49f77c9c9eb4" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
~/.buildkite-agent/bin/buildkite-agent start
 
     echo COUNTER $COUNTER
     let COUNTER-=1
done
