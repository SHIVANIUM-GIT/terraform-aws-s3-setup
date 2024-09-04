module "app" {
  source = "./aws_infra"

  my_evn         = var.my_evn
  instance_type  = var.instance_type
  ami_id          = var.ami_id
  instance_count = var.instance_count
}
