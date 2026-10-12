output "dynamic_tables_lookup_id" {
  description = "Map of id values across all dynamic_tables_lookup, keyed the same as var.dynamic_tables_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_dynamic_tables.dynamic_tables_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dynamic_tables_lookup_in" {
  description = "Map of in values across all dynamic_tables_lookup, keyed the same as var.dynamic_tables_lookup except keys with no in are omitted"
  value       = { for k, v in data.snowflake_dynamic_tables.dynamic_tables_lookup : k => one(v.in) if v.in != null && length(v.in) > 0 }
}
output "dynamic_tables_lookup_like" {
  description = "Map of like values across all dynamic_tables_lookup, keyed the same as var.dynamic_tables_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_dynamic_tables.dynamic_tables_lookup : k => one(v.like) if v.like != null && length(v.like) > 0 }
}
output "dynamic_tables_lookup_limit" {
  description = "Map of limit values across all dynamic_tables_lookup, keyed the same as var.dynamic_tables_lookup except keys with no limit are omitted"
  value       = { for k, v in data.snowflake_dynamic_tables.dynamic_tables_lookup : k => one(v.limit) if v.limit != null && length(v.limit) > 0 }
}
output "dynamic_tables_lookup_records" {
  description = "Map of records values across all dynamic_tables_lookup, keyed the same as var.dynamic_tables_lookup except keys with no records are omitted"
  value       = { for k, v in data.snowflake_dynamic_tables.dynamic_tables_lookup : k => v.records if v.records != null && length(v.records) > 0 }
}
output "dynamic_tables_lookup_starts_with" {
  description = "Map of starts_with values across all dynamic_tables_lookup, keyed the same as var.dynamic_tables_lookup except keys with no starts_with are omitted"
  value       = { for k, v in data.snowflake_dynamic_tables.dynamic_tables_lookup : k => v.starts_with if v.starts_with != null && length(v.starts_with) > 0 }
}

