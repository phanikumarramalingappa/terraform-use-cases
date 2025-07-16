package terraform

deny[msg] {
    resource := input.resource_changes[_]
    resource.type == "aws_scheduler_schedule"
    not valid_schedule(resource.change.after.schedule_expression)
    msg := sprintf("Too Frequent Schedule")
}

valid_schedule(expr) {
    re_match("rate\\(\\s*[1-9]\\s+minutes[s]?\\s*\\)", expr)
}