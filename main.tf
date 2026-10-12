data "snowflake_dynamic_tables" "dynamic_tables_lookup" {
  for_each = var.dynamic_tables_lookup

  starts_with = each.value.starts_with

  dynamic "in" {
    for_each = each.value.in != null ? [each.value.in] : []
    content {
      account  = in.value.account
      database = in.value.database
      schema   = in.value.schema
    }
  }

  dynamic "like" {
    for_each = each.value.like != null ? [each.value.like] : []
    content {
      pattern = like.value.pattern
    }
  }

  dynamic "limit" {
    for_each = each.value.limit != null ? [each.value.limit] : []
    content {
      from = limit.value.from
      rows = limit.value.rows
    }
  }
}

