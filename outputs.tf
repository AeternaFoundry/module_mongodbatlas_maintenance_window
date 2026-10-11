output "maintenance_windows_id" {
  description = "Map of id values across all maintenance_windows, keyed the same as var.maintenance_windows except keys with no id are omitted"
  value       = { for k, v in mongodbatlas_maintenance_window.maintenance_windows : k => v.id if v.id != null && length(v.id) > 0 }
}
output "maintenance_windows_auto_defer" {
  description = "Map of auto_defer values across all maintenance_windows, keyed the same as var.maintenance_windows except keys with no auto_defer are omitted"
  value       = { for k, v in mongodbatlas_maintenance_window.maintenance_windows : k => v.auto_defer if v.auto_defer != null }
}
output "maintenance_windows_auto_defer_once_enabled" {
  description = "Map of auto_defer_once_enabled values across all maintenance_windows, keyed the same as var.maintenance_windows except keys with no auto_defer_once_enabled are omitted"
  value       = { for k, v in mongodbatlas_maintenance_window.maintenance_windows : k => v.auto_defer_once_enabled if v.auto_defer_once_enabled != null }
}
output "maintenance_windows_day_of_week" {
  description = "Map of day_of_week values across all maintenance_windows, keyed the same as var.maintenance_windows except keys with no day_of_week are omitted"
  value       = { for k, v in mongodbatlas_maintenance_window.maintenance_windows : k => v.day_of_week if v.day_of_week != null }
}
output "maintenance_windows_defer" {
  description = "Map of defer values across all maintenance_windows, keyed the same as var.maintenance_windows except keys with no defer are omitted"
  value       = { for k, v in mongodbatlas_maintenance_window.maintenance_windows : k => v.defer if v.defer != null }
}
output "maintenance_windows_hour_of_day" {
  description = "Map of hour_of_day values across all maintenance_windows, keyed the same as var.maintenance_windows except keys with no hour_of_day are omitted"
  value       = { for k, v in mongodbatlas_maintenance_window.maintenance_windows : k => v.hour_of_day if v.hour_of_day != null }
}
output "maintenance_windows_number_of_deferrals" {
  description = "Map of number_of_deferrals values across all maintenance_windows, keyed the same as var.maintenance_windows except keys with no number_of_deferrals are omitted"
  value       = { for k, v in mongodbatlas_maintenance_window.maintenance_windows : k => v.number_of_deferrals if v.number_of_deferrals != null }
}
output "maintenance_windows_project_id" {
  description = "Map of project_id values across all maintenance_windows, keyed the same as var.maintenance_windows except keys with no project_id are omitted"
  value       = { for k, v in mongodbatlas_maintenance_window.maintenance_windows : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "maintenance_windows_protected_hours" {
  description = "Map of protected_hours values across all maintenance_windows, keyed the same as var.maintenance_windows except keys with no protected_hours are omitted"
  value       = { for k, v in mongodbatlas_maintenance_window.maintenance_windows : k => one(v.protected_hours) if v.protected_hours != null && length(v.protected_hours) > 0 }
}
output "maintenance_windows_start_asap" {
  description = "Map of start_asap values across all maintenance_windows, keyed the same as var.maintenance_windows except keys with no start_asap are omitted"
  value       = { for k, v in mongodbatlas_maintenance_window.maintenance_windows : k => v.start_asap if v.start_asap != null }
}
output "maintenance_windows_time_zone_id" {
  description = "Map of time_zone_id values across all maintenance_windows, keyed the same as var.maintenance_windows except keys with no time_zone_id are omitted"
  value       = { for k, v in mongodbatlas_maintenance_window.maintenance_windows : k => v.time_zone_id if v.time_zone_id != null && length(v.time_zone_id) > 0 }
}
output "maintenance_windows_wave_assignment" {
  description = "Map of wave_assignment values across all maintenance_windows, keyed the same as var.maintenance_windows except keys with no wave_assignment are omitted"
  value       = { for k, v in mongodbatlas_maintenance_window.maintenance_windows : k => v.wave_assignment if v.wave_assignment != null }
}

