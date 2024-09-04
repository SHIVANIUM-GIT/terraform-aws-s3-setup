variable "my_evn" {
    type        = string
    description = "This is the environment variable"
}

variable "ami_id" {
    description = "AMI ID for the instance"
    type        = string
    sensitive   = true
    # default = "ami-xxxxxxxx" # Uncomment if you want to provide a default value
}

variable "instance_type" {
    description = "The type of EC2 instance"
    type        = string
    # default = "t2.micro" # Uncomment if you want to provide a default value
}

variable "instance_count" {
    description = "The number of EC2 instances"
    type        = number
    # default = 1 # Uncomment if you want to provide a default value
}
