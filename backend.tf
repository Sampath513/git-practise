terraform {
    backend "s3" {
        bucket = "bucket-1234567"
        key = "sampath/terraform.tfstate"
        dynamodb_table = "dynamo-table-1234567"
        region = "us-east-1"
    }
}