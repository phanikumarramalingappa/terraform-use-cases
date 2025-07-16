package terraform

deny[msg] {
    resource := input.resource_changes[_]
    resource.type == "aws_scheduler_schedule"
        
    expr := resource.change.after.schedule_expression

    re_match("rate\\(\\s*[1-9]1[04]\\s+minutes[s]?\\s*\\)", expr)

    msg := sprintf("Too Frequent Schedule")
}