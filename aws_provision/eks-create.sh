aws eks create-cluster \
  --name udacity-capstone-cluster \
  --region us-west-2 \
  --role-arn arn:aws:iam::952330169748:role/capstone-cluster-role \
  --resources-vpc-config subnetIds=subnet-0c76dad903774cd7b,subnet-0dd6c85d56b521f74,securityGroupIds=sg-06b71c6dba8711f49