resource "gitlab_group" "main" {
  name        = "Vagrant Desktop"
  path        = "vagrant-desktop"
  description = "Reproducible graphical development environments constructed using Vagrant & Virtualbox"
  parent_id   = "${var.parent}"
  visibility_level = "public"
}

resource "gitlab_project" "vagrant-desktop-homelab" {
  name         = "vagrant-desktop-homelab"
  description  = "Reproducible graphical environment for Homelab experimentation based on Vagrant"
  namespace_id = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "vagrant-desktop-docker" {
  name         = "vagrant-desktop-docker"
  description  = "Reproducible graphical development environment for Docker based on Vagrant"
  namespace_id = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "vagrant-desktop-opengl" {
  name         = "vagrant-desktop-opengl"
  description  = "Reproducible graphical development environment for OpenGL based on Vagrant"
  namespace_id = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "vagrant-desktop-x11" {
  name         = "vagrant-desktop-x11"
  description  = "Reproducible graphical development environment for X11 based on Vagrant"
  namespace_id = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "vagrant-desktop" {
  name         = "vagrant-desktop"
  description  = "Reproducible graphical development environments based on Vagrant"
  namespace_id = "${gitlab_group.main.id}"
  visibility_level = "public"
}
