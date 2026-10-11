resource "mongodbatlas_maintenance_window" "maintenance_windows" {
  for_each = var.maintenance_windows

  project_id              = each.value.project_id
  auto_defer              = each.value.auto_defer
  auto_defer_once_enabled = each.value.auto_defer_once_enabled
  day_of_week             = each.value.day_of_week
  defer                   = each.value.defer
  hour_of_day             = each.value.hour_of_day
  wave_assignment         = each.value.wave_assignment

  dynamic "protected_hours" {
    for_each = each.value.protected_hours != null ? [each.value.protected_hours] : []
    content {
      end_hour_of_day   = protected_hours.value.end_hour_of_day
      start_hour_of_day = protected_hours.value.start_hour_of_day
    }
  }
}

