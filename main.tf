module "dev-app" {
    source          = "./aws_infra"
    my_evn           = "dev"               # Provide the environment name
    instance_type    = "t2.micro"          # Provide the instance type
    ami_id           = "ami-12345678"      # Provide the AMI ID
    instance_count   = 1
}

module "stg-app" {
    source          = "./aws_infra"
    my_evn           = "stg"               # Provide the environment name
    instance_type    = "t2.small"          # Provide the instance type
    ami_id           = "ami-23456789"      # Provide the AMI ID
    instance_count   = 1
}

module "production-app" {
    source          = "./aws_infra"
    my_evn           = "prod"              # Provide the environment name
    instance_type    = "t2.large"          # Provide the instance type
    ami_id           = "ami-34567890"      # Provide the AMI ID
    instance_count   = 3
}
