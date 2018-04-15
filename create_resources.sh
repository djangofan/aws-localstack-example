#!/bin/bash

# command 'aws configure list'
# command 'aws configure'
# aws --debug --region us-west-2 --no-sign-request --endpoint-url=http://192.168.99.100:4572 s3 mb s3://mytestbucket

aws --region us-west-2 --no-sign-request --endpoint-url=http://192.168.99.100:4572 s3 mb s3://mytestbucket

aws --no-sign-request --endpoint-url=http://192.168.99.100:4570 sqs create-queue --queue-name MyQueue

