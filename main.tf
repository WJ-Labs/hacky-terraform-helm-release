resource "helm_release" "this" {
  name = var.name

  repository = var.repository
  chart      = var.chart
  version    = var.chart_version
  namespace  = var.namespace

  create_namespace = var.create_namespace

  values = var.values

  dynamic "set" {
    for_each = var.override_config
    content {
      name = set.key
      value = set.value
    }
  }
}
