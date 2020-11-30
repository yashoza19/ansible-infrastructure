#!/bin/bash
vpc="vpc-xxxxxxxxxxxxx" 
aws ec2 describe-internet-gateways --filters 'Name=attachment.vpc-id,Values='$vpc | grep InternetGatewayId
aws ec2 describe-subnets --filters 'Name=vpc-id,Values='$vpc | grep SubnetId
aws ec2 describe-route-tables --filters 'Name=vpc-id,Values='$vpc | grep RouteTableId