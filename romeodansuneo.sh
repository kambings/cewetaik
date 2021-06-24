#!/bin/sh

COUNTER=20
until [  $COUNTER -lt 10 ]; do
 
TOKEN="a1836a5b5a66fe38c4babe233a0fb083cb1dbe6ad53909dc60" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
~/.buildkite-agent/bin/buildkite-agent start
 
     echo COUNTER $COUNTER
     let COUNTER-=1
done
