resource "gitlab_group" "main" {
  name        = "StackIt"
  path        = "stacks"
  description = "Experiment for block-based tooling"
  parent_id   = "${var.parent}"
}

resource "gitlab_project" "stack-net" {
  name         = "stack-net"
  description  = "A block blueprint designer"
  namespace_id = "${gitlab_group.main.id}"
}

resource "gitlab_project" "stack-opengl" {
  name         = "stack-opengl"
  description  = "A block stack designer"
  namespace_id = "${gitlab_group.main.id}"
}
