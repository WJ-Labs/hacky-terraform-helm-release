output "release_name" {
  value       = helm_release.this.metadata.0.name
  description = "The name of the release."
}

output "release_version" {
  value       = helm_release.this.metadata.0.version
  description = "A SemVer 2 conformant version string of the chart."
}

output "manifest" {
  value       = try(helm_release.this.manifest, null)
  description = "The manifest of the release deployed."
}
