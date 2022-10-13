resource "aws_s3_bucket" "work_bucket" {
  bucket        = "work-sample-bucket"
  force_destroy = true
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.work_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_object" "file_to_S3" {
  bucket = aws_s3_bucket.work_bucket.id
  key    = "sample.txt"
  source = "sample.txt"
}