resource "gitlab_group" "main" {
  name        = "XPlatformer"
  path        = "xplatformer"
  description = "XPlatformer is a standard 2D platformer with levels, and unlockable vaults"
  parent_id   = "${var.parent}"
  visibility_level = "public"
}

resource "gitlab_project" "xplatformer" {
  name         = "xplatformer"
  description  = "XPlatformer is a standard 2D platformer with levels, and unlockable vaults"
  namespace_id = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "xgamelib" {
  name         = "xgamelib"
  description  = "A framework for a 2D Platformer built using the X Window System"
  namespace_id = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "xsamples" {
  name         = "xsamples"
  description  = "A collection of samples built using XGameLib"
  namespace_id = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "xplatformer-workspace" {
  name         = "xplatformer-workspace"
  description  = "Workspace for XPlatformer"
  namespace_id = "${gitlab_group.main.id}"
  visibility_level = "public"
}
