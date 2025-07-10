output "sg_id" {
  value = aws_security_group.security_group.id
}

output "rds_sg_id" {
  value = aws_security_group.rds_security_group.id
}