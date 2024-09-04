resource "aws_dynamodb_table" "my_table" {
    name         = "${var.my_evn}-dynamic_table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key     = "id"

    attribute {
        name = "id"
        type = "S"
    }

    tags = {
        Environment = var.my_evn
    }

    server_side_encryption {
        enabled = true
    }
}

