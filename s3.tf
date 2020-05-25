resource "aws_s3_bucket" "s3_txt_bucket" {
  bucket = "${var.environment}-${var.owner}-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My txt test bucket"
    Environment = var.environment
  }

}


resource "aws_s3_bucket_object" "file_upload" {
  count   = length (var.files_names)
  bucket  = aws_s3_bucket.s3_txt_bucket.bucket
  key     = var.files_names[count.index]
  content = "${formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())}"
}

