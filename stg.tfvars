source          = "./aws_infra"        # Path to the Terraform module containing AWS infrastructure setup
my_evn          = "stg"                # Environment name (e.g., dev, stg, prod)
instance_type   = "t2.small"           # EC2 instance type (e.g., t2.micro, t2.small)
ami_id          = "ami-xxxxxxxx"       # Amazon Machine Image (AMI) ID for the EC2 instance
instance_count  = 1                    # Number of EC2 instances to be launched

