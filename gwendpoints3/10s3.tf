# create s3 bucket
resource "aws_s3_bucket" "bucket9921" {
  bucket = "bucket9921"

  tags = {
    Name = "bucket9921"

  }
}

# copy file to the s3 bucket 

resource "aws_s3_bucket_object" "bucketobject9921" {

  bucket = aws_s3_bucket.bucket9921.id
  key    = "one.txt"
  source = "./one.txt"

}