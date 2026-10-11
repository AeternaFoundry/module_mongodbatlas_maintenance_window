variable "maintenance_windows" {
  description = <<EOT
Map of maintenance_windows, attributes below
Required:
    - project_id
Optional:
    - auto_defer
    - auto_defer_once_enabled
    - day_of_week
    - defer
    - hour_of_day
    - wave_assignment
    - protected_hours (block):
        - end_hour_of_day (required)
        - start_hour_of_day (required)
EOT

  type = map(object({
    project_id              = string
    auto_defer              = optional(bool)
    auto_defer_once_enabled = optional(bool)
    day_of_week             = optional(number)
    defer                   = optional(bool)
    hour_of_day             = optional(number)
    wave_assignment         = optional(number)
    protected_hours = optional(object({
      end_hour_of_day   = number
      start_hour_of_day = number
    }))
  }))
}

