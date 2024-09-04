resource "aws_s3_bucket" "my_bucket" {
    bucket = "${var.my_evn}-s3-bucket"
    tags = {
        name        = "${var.my_evn}-s3"
        environment = "${var.my_evn}"
    }

}

