variable "dynamic_tables_lookup" {
  description = <<EOT
Map of dynamic_tables_lookup, attributes below
Optional:
    - starts_with
    - in (block):
        - account (optional)
        - database (optional)
        - schema (optional)
    - like (block):
        - pattern (required)
    - limit (block):
        - from (optional)
        - rows (optional)
EOT

  type = map(object({
    starts_with = optional(string)
    in = optional(object({
      account  = optional(bool)
      database = optional(string)
      schema   = optional(string)
    }))
    like = optional(object({
      pattern = string
    }))
    limit = optional(object({
      from = optional(string)
      rows = optional(number)
    }))
  }))
}

