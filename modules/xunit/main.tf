resource "gitlab_group" "main" {
  name        = "XUnit Extensions"
  path        = "xunit-ext"
  description = "Extensions for xUnit that assist in the organization or architecture of tests"
  parent_id   = "${var.parent}"
}

resource "gitlab_project" "xunit-data" {
  name         = "xunit-data"
  description  = "Provides data source-specific data-driven testing"
  namespace_id = "${gitlab_group.main.id}"
}

resource "gitlab_project" "xunit-metadata" {
  name         = "xunit-metadata"
  description  = "Strongly-typed attributes for the management and organization of tests"
  namespace_id = "${gitlab_group.main.id}"
}
