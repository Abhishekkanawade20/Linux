#!/bin/bash
#
#################################################
# Author: Abhishek kanawade
# version: v1
# Date: 20-11-2025
# Purpose: Used for AWS Resource monitoring
# ###############################################

# S3 bucket listing
echo "Below is the listing of s3 bucket"
aws s3 ls

# IAM User listing
echo "list of iam users"
aws iam list-users | jq '.Users[].UserName'

# list of instance
echo "list of aws instance"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list of volumes
echo "list of volumes"
aws ec2 describe-volumes | jq '.Volumes[].VolumeId'

# list of vpc
echo "list of vpc"
aws ec2 describe-vpcs | jq '.Vpcs[] | {VpcId: .VpcId, CidrBlock: .CidrBlock}'

# list of security groups
echo "list of security groups"
aws ec2 describe-security-groups | jq '.SecurityGroups[].GroupName'



