package main

deny[msg] {
    some i
    resource := input.resource_changes[i]
    resource.type == "aws_scheduler_schedule"
    expr := resource.change.after.schedule_expression
    re_match("rate\\(\\s*[1-9][1-4]\\s+minutes[s]?\\s*\\)", expr)
    msg := "Too Frequent Schedule"

}