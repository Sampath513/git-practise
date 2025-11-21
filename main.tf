resource "s3_bucket" "mybucket" {
    bucket= var.s3_bucket_name
}
resource "dynamodb_table" "mydynamotable" {
    name = var.dynamodb_table_name
    hash_key = "LockID"
    billing_mode = "PAY_PER_REQUEST"
    attribute {
        name = "LockID"
        type = "s"
    }
}