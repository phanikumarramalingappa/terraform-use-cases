output "instance_ids" {
    value = [
        aws_instance.instance_a.id,
        aws_instance.instance_b.id,
        aws_instance.instance_c.id
    ]
}