output "release_name" {
  value = helm_release.this.metadata.name
  description = "The name of the release."
}

output "release_version" {
  value = helm_release.this.metadata.version
  description = "A SemVer 2 conformant version string of the chart."
}