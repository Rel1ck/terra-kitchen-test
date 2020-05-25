s3_bucket_id = attribute('s3_txt_bucket', description: 'S3 Bucket ID')
s3_object_id = attribute('s3_txt_files', description: 'S3 Bucket Objects ID')

control 'aws_resources' do
  describe aws_s3_bucket(s3_bucket_id) do
    it { should exist }
  end

  s3_object_id.each do |bucket_object_id|
      describe aws_s3_bucket_object(key: bucket_object_id, bucket_name: s3_bucket_id) do
        it { should exist }
      end
  end
end

