provider "gitlab" {
  token    = "${var.gitlab_token}"
  insecure = "true"
  base_url = "http://git.jrbeverly.me/api/v4/"
}

##
## Root Gitlab

resource "gitlab_group" "primary" {
  name             = "Repositories - jrbeverly"
  path             = "jrbeverlylabs"
  description      = "The personal repositories of jrbeverly."
  visibility_level = "public"
}

##
## Subgroups
module "blockycraft" {
  source = "./modules/blockycraft"

  parent = "${gitlab_group.primary.id}"
}

module "dockerfiles" {
  source = "./modules/dockerfiles"

  parent = "${gitlab_group.primary.id}"
}

module "friending" {
  source = "./modules/friending"

  parent = "${gitlab_group.primary.id}"
}

module "githooks" {
  source = "./modules/githooks"

  parent = "${gitlab_group.primary.id}"
}

module "gitlab" {
  source = "./modules/gitlab"

  parent = "${gitlab_group.primary.id}"
}

module "homelab" {
  source = "./modules/homelab"

  parent = "${gitlab_group.primary.id}"
}

module "jrbeverly" {
  source = "./modules/jrbeverly"

  parent = "${gitlab_group.primary.id}"
}

module "mirroring" {
  source = "./modules/mirroring"

  parent = "${gitlab_group.primary.id}"
}

module "stacks" {
  source = "./modules/stacks"

  parent = "${gitlab_group.primary.id}"
}

module "uwaterloo" {
  source = "./modules/uwaterloo"

  parent = "${gitlab_group.primary.id}"
}

module "vagrant-desktop" {
  source = "./modules/vagrant-desktop"

  parent = "${gitlab_group.primary.id}"
}

module "workbench" {
  source = "./modules/workbench"

  parent = "${gitlab_group.primary.id}"
}

module "workspaces" {
  source = "./modules/workspaces"

  parent = "${gitlab_group.primary.id}"
}

module "xplatformer" {
  source = "./modules/xplatformer"

  parent = "${gitlab_group.primary.id}"
}

module "xunit" {
  source = "./modules/xunit"

  parent = "${gitlab_group.primary.id}"
}
