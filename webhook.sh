#!/bin/bash

if [ $# -eq 1 ]
then
  MSG=$(cat)
  WEBHOOK=$1
elif [ $# -eq 2 ]
then
  MSG=$(cat $1)
  WEBHOOK=$2
else
  echo "No arguments supplied"
  exit 1
fi

HTTP_RESPONSE=$(curl -s -o /dev/null -w "`date +%Y-%m-%dT%T`,%{url_effective},%{response_code}\n" -X POST -H "Content-Type: application/json" --data """{\"text\":\"${MSG}\"}""" $WEBHOOK)

echo $HTTP_RESPONSE

HTTP_CODE=`echo $HTTP_RESPONSE | cut -d "," -f3`

if [ $HTTP_CODE -eq 200 ]
then
 exit 0
else
 exit 1
fi
