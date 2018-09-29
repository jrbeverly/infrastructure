resource "gitlab_group" "main" {
  name             = "Blockycraft"
  path             = "blockycraft"
  description      = "Blockycraft is a Minecraft inspired world meant to demonstrate specific graphical techniques in an interactive demo application"
  parent_id        = "${var.parent}"
  visibility_level = "public"
}

resource "gitlab_project" "blockycraft-manual" {
  name             = "blockycraft-manual"
  description      = "Blockycraft is a interactive graphics demo to create a Minecraft inspired world"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "blockycraft" {
  name             = "blockycraft"
  description      = "Blockycraft is a Minecraft inspired Block Engine"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}
