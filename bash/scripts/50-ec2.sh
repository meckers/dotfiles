#!/bin/bash
if [ -d ~/.ec2 ]; then
    export EC2_HOME=~/.ec2
    export EC2_PRIVATE_KEY=`ls ${EC2_HOME}/pk-*.pem`
    export EC2_CERT=`ls ${EC2_HOME}/cert-*.pem`
    export PATH=${PATH}:${EC2_HOME}/bin
    export EC2_URL=https://eu-west-1.ec2.amazonaws.com
fi
