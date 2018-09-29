resource "gitlab_group" "main" {
  name             = "Dockerfiles"
  path             = "dockerfiles"
  description      = "A collection of dockerfiles"
  parent_id        = "${var.parent}"
  visibility_level = "public"
}

resource "gitlab_project" "docker-dind-bats" {
  name             = "docker-dind-bats"
  description      = "Dockerized bats"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "docker-wkhtmltopdf" {
  name             = "docker-wkhtmltopdf"
  description      = "Dockerized wkhtmltopdf"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "docker-minify" {
  name             = "docker-minify"
  description      = "Dockerized minify"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "docker-optipng" {
  name             = "docker-optipng"
  description      = "Dockerized Optipng"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "docker-boilerplate" {
  name             = "docker-boilerplate"
  description      = "A docker boilerplate project for a build image"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "docker-glibc" {
  name             = "docker-glibc"
  description      = "A super small Docker image with glibc installed"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "docker-xwindow" {
  name             = "docker-xwindow"
  description      = "Dockerized X Window System"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "docker-baseimage" {
  name             = "docker-baseimage"
  description      = "A minimal base image modified for Docker-CI"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "docker-rsvg" {
  name             = "docker-rsvg"
  description      = "Dockerized librsvg"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "docker-pdf2htmlex" {
  name             = "docker-pdf2htmlex"
  description      = "Dockerized pdf2htmlEX"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "docker-latex" {
  name             = "docker-latex"
  description      = "Dockerized Latex Compiler"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "docker-sonarr" {
  name             = "docker-sonarr"
  description      = "Dockerized Sonarr"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "docker-alpine" {
  name             = "docker-alpine"
  description      = "A minimal Alpine base image modified for Docker applications"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "docker-deluge" {
  name             = "docker-deluge"
  description      = "Dockerized Deluge"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "docker-plex" {
  name             = "docker-plex"
  description      = "Dockerized Plex Media Server"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}
