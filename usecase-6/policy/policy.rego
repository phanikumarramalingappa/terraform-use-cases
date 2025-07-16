package terraform

deny[msg] {
    some i
    resource :=input.resource_changes[i]
    not valid_schedule(resource.change.after.schedule_expression)
    msg := sprintf("Too Frequent Schedule")
}

valid_schedule(expr) {
    re_match("rate\\(\\s*1[5-9]\\s+minutes[s]?\\s*\\)", expr)
}