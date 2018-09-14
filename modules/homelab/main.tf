resource "gitlab_group" "main" {
  name        = "Homelab"
  path        = "homelab"
  description = "Experimentation with self-hosted services on my own hardware."
  parent_id   = "${var.parent}"
}

resource "gitlab_project" "homelab" {
  name         = "homelab"
  description  = "A set of scripts used in the quick initialization and configuration of home server"
  namespace_id = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "media-depot" {
  name         = "media-depot"
  description  = "media.depot is a container based media aggregator stack"
  namespace_id = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "office-depot" {
  name         = "office-depot"
  description  = "office.depot is a container based developer aggregator stack"
  namespace_id = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "wifi-web" {
  name         = "wifi-web"
  description  = "Provides a visually friendly USB method for providing WiFi configurations"
  namespace_id = "${gitlab_group.main.id}"
  visibility_level = "public"
}
