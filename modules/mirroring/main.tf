resource "gitlab_group" "main" {
  name             = "Mirroring"
  path             = "mirroring"
  description      = "Utilities to assist in the mirroring of git repositories"
  parent_id        = "${var.parent}"
  visibility_level = "public"
}

resource "gitlab_project" "mirroring" {
  name             = "mirroring"
  description      = "A utility for mirroring git repositories to source control hosting services"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}
