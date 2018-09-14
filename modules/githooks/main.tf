resource "gitlab_group" "main" {
  name        = "Githooks"
  path        = "githooks"
  description = "Git hooks for common scenarios that Git executes before or after events"
  parent_id   = "${var.parent}"
}

resource "gitlab_project" "githooks" {
  name         = "githooks"
  description  = "Git hooks for common scenarios that Git executes before or after events"
  namespace_id = "${gitlab_group.main.id}"
}
