#!/bin/bash

# login to aws ec2 instances (ubuntu) by passing the ip 

ssh -i ~/.ssh/mcgill/comp598.pem ubuntu@$1

