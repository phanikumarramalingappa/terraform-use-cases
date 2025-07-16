package main

# Deny overly frequent event schedules
deny[msg] {
  input.resource_type == "aws_scheduler_schedule"
  re_match("rate\\(\\s*[1-9][1-4]\\s+minutes[s]?\\s*\\)", input.config.schedule_expression)
  msg = sprintf("Event '%s' has a schedule that is too frequent: %s", [input.name, input.config.schedule_expression])
}
