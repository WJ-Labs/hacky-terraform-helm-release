resource "helm_release" "this" {
  name = var.name

  repository = var.repository
  chart      = var.chart
  version    = var.chart_version
  namespace  = var.namespace

  create_namespace = var.create_namespace

  values = var.values

  timeout = var.timeout

  dynamic "set" {
    for_each = var.override_set_config
    content {
      name  = set.key
      value = set.value
    }
  }

  dynamic "set_sensitive" {
    for_each = var.override_set_sensitive_config
    content {
      name  = set_sensitive.key
      value = set_sensitive.value
    }
  }
}
