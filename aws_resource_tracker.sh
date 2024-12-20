#!/bin/bash

##################
# Author: Rituparno Ghosh
# Date: 20th Dec, 2024
# Version: V1
#
# This Script will report the AWS resource Usage
# ################


#List s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

#List EC2 instance
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#List Lambda
echo "Print list of labda functions"
aws lambda list-functions

#List IAM Users
echo "Print list of IAM users"
aws iam list-users | jq -r '.Users[] | "\(.UserName) \(.CreateDate)"'
