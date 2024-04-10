terraform init
terraform plan -var='ec2_tags={"name": "CMD line EC2"}'

terraform plan -var-file='dev.tfvars'

export TF_VAR_ec2_tags='{"name": "ENV Var EC2"}'
terraform plan