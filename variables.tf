variable "name" {
  type        = string
  description = "Release name."
}

variable "repository" {
  type        = string
  description = "Repository URL where to locate the requested chart."
  default     = null
}

variable "chart" {
  type        = string
  description = " Chart name to be installed. The chart name can be local path, a URL to a chart, or the name of the chart if repository is specified."
}

variable "chart_version" {
  type        = string
  description = "Specify the exact chart version to install. If this is not specified, the latest version is installed."
  default     = null
}

variable "namespace" {
  description = "The namespace to install the release into. Defaults to default."
  default     = null
}

variable "create_namespace" {
  description = "Create the namespace if it does not yet exist."
  default     = true
}

variable "values" {
  description = "List of values in raw yaml to pass to helm."
}

variable "override_set_config" {
  type        = map(string)
  description = "Value block with custom values to be merged with the values yaml."
  default     = {}
}

variable "override_set_sensitive_config" {
  type        = map(string)
  description = "Value block with custom sensitive values to be merged with the values yaml that won't be exposed in the plan's diff."
  default     = {}
}

variable "timeout" {
  type        = number
  description = "Time in seconds to wait for any individual kubernetes operation (like Jobs for hooks)."
  default     = 300
}
