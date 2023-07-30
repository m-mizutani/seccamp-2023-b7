#!/bin/bash

mkdir -p policy/out/instances
mkdir -p policy/out/security_groups
aws ec2 describe-instances > policy/out/instances/data.json
aws ec2 describe-security-groups > policy/out/security_groups/data.json
