output "instance_ids" {
    value = [
        aws_instance.ec2.id,
        aws_instance.ec2-1.id,
        aws_instance.ec2-2.id
    ]
}
