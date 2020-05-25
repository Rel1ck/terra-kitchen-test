output "s3_txt_bucket"{
    description = "S3 Bucket created for the test"
    value       = aws_s3_bucket.s3_txt_bucket.bucket
}

output "s3_txt_files"{
    value      = aws_s3_bucket_object.file_upload.*.key
}