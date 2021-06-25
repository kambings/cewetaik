#!/bin/sh

COUNTER=20
until [  $COUNTER -lt 10 ]; do
 
TOKEN="af0defee4df70220daa539f4e68945574bd26b0d588e8616ca" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
~/.buildkite-agent/bin/buildkite-agent start
 
     echo COUNTER $COUNTER
     let COUNTER-=1
done
