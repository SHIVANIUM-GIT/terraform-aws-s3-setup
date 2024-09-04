# Terraform AWS S3 Bucket Configuration

## Overview

This Terraform configuration creates an AWS S3 bucket with a name and tags based on the provided environment variable (`var.my_evn`). It includes additional configurations such as versioning, lifecycle policies, and logging to manage the bucket effectively.



![Screenshot](pic.png)

## Resources

- **AWS S3 Bucket**: Creates an S3 bucket with environment-specific naming and tagging.
- **Versioning**: Enabled for object versioning.
- **Lifecycle Policy**: Protects the bucket from accidental destruction.
- **Logging**: Configured for server access logging.

## Variables

### `my_evn`
- **Type**: `string`
- **Description**: Environment variable used to name the bucket and tags.

### `ami_id`
- **Type**: `string`
- **Description**: AMI ID for the EC2 instance.

### `instance_type`
- **Type**: `string`
- **Description**: The type of EC2 instance.

### `instance_count`
- **Type**: `number`
- **Description**: The number of EC2 instances.

### `key_name`
- **Type**: `string`
- **Description**: The name of the SSH key pair to access the EC2 instance.

## Configuration

### S3 Bucket

```hcl
resource "aws_s3_bucket" "my_bucket" {
    bucket = "${var.my_evn}-s3-bucket"
    tags = {
        name        = "${var.my_evn}-s3"
        environment = "${var.my_evn}"
    }

}
```

## Usage

1. **Clone the Repository**

   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```

2. **Initialize Terraform**

   Initialize your Terraform configuration to download the necessary providers.

   ```bash
   terraform init
   ```

3. **Plan the Deployment**

   Review the changes that will be applied by Terraform.

   ```bash
   terraform plan
   ```

4. **Apply the Configuration**

   Apply the configuration to create the S3 bucket.

   ```bash
   terraform apply
   ```

   Confirm the action by typing `yes` when prompted.

5. **Verify the Bucket**

   Check the AWS S3 console or use the AWS CLI to verify the bucket creation.

## Best Practices

- **Bucket Name Uniqueness**: Ensure the bucket name is unique globally.
- **Versioning**: Enable versioning to keep multiple versions of objects.
- **Lifecycle Policies**: Manage storage class and retention of objects.
- **Access Control**: Configure bucket policies carefully to manage access.
- **Logging**: Enable server access logging for auditing and monitoring.

## Security

- **Protect Private Keys**: Ensure that private keys are managed securely and not exposed.
- **Avoid Public Access**: Configure access policies to prevent unintended public access.

