resource "gitlab_group" "main" {
  name        = "Workspaces"
  path        = "workspaces"
  description = "Provisioning of standard development environments"
  parent_id   = "${var.parent}"
}

resource "gitlab_project" "boxstarter-scripts" {
  name         = "boxstarter-scripts"
  description  = "Repeatable, reboot resilient windows environment installations made easy using Chocolatey packages"
  namespace_id = "${gitlab_group.main.id}"
}

resource "gitlab_project" "packer-desktop" {
  name         = "packer-desktop"
  description  = "A set of configurations for creating golden images for multiple developer environments"
  namespace_id = "${gitlab_group.main.id}"
}

resource "gitlab_project" "boxstarter-workspace" {
  name         = "boxstarter-workspace"
  description  = "Reproducible and customizable environments using Boxstarter"
  namespace_id = "${gitlab_group.main.id}"
}
