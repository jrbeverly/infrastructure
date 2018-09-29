resource "gitlab_group" "main" {
  name             = "Workbench"
  path             = "workbench"
  description      = "Experimentation projects"
  parent_id        = "${var.parent}"
  visibility_level = "public"
}

resource "gitlab_project" "localization-net" {
  name             = "localization-net"
  description      = "Reference architecture application for a .NET Language Labels"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "contentbundler" {
  name             = "contentbundler"
  description      = "Bundles a set of files together, producing strongly typed constants"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "cqrs" {
  name             = "cqrs"
  description      = "Reference architecture application for a .NET Command Query"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "entity-net" {
  name             = "entity-net"
  description      = "Reference architecture application for a .NET strongly typed ORM"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "tictactoe-net" {
  name             = "tictactoe-net"
  description      = "Reference architecture for a .NET ModelViewViewModel"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}
