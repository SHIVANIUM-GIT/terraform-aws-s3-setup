resource "aws_instance" "my_instance" {
    count             = var.instance_count
    ami               = var.ami_id
    instance_type     = var.instance_type

    tags = {
        Name = "${var.my_evn}-instance"
    }
}
