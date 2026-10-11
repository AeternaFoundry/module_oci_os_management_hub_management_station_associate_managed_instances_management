variable "os_management_hub_management_station_associate_managed_instances_managements" {
  description = <<EOT
Map of os_management_hub_management_station_associate_managed_instances_managements, attributes below
Required:
    - managed_instances
    - management_station_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - work_request_details (block):
        - description (optional)
        - display_name (optional)
EOT

  type = map(object({
    managed_instances     = list(string)
    management_station_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    work_request_details = optional(object({
      description  = optional(string)
      display_name = optional(string)
    }))
  }))
}

