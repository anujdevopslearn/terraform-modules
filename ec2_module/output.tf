
output "vm_public_ip" {
  value = aws_instance.jenkins_instance.*.public_dns
}

output "bucket_name" {
  value = aws_s3_bucket.example.id
}
