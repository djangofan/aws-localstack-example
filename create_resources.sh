#!/bin/bash
AWS_ACCESS_KEY_ID=xxxx
AWS_SECRET_ACCESS_KEY=xxxx
# command 'aws configure list'
# command 'aws configure'

aws --debug --endpoint-url=http://192.168.99.100:4572 s3 mb s3://mytestbucket


