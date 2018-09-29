resource "gitlab_group" "main" {
  name             = "jrbeverly"
  path             = "jrbeverly"
  description      = "Set of projects for jrbeverly"
  parent_id        = "${var.parent}"
  visibility_level = "public"
}

resource "gitlab_project" "circum-vitae" {
  name             = "circum-vitae"
  description      = "The circum-vitae of Jonathan Beverly (jrbeverly)"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "icons" {
  name             = "icons"
  description      = "A collection of project and group icons"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "jrbeverly-gitlab-io" {
  name             = "jrbeverly-gitlab-io"
  description      = "A personal website hosted at jrbeverly.gitlab.io"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "jrbeverly-me" {
  name             = "jrbeverly-me"
  description      = "The personal website of Jonathan Beverly (jrbeverly)"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "portfolio" {
  name             = "portfolio"
  description      = "The portfolio of Jonathan Beverly (jrbeverly)"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "profile" {
  name             = "profile"
  description      = "A one page user profile for Jonathan Beverly (jrbeverly), linking to multiple online identities"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "resume" {
  name             = "resume"
  description      = "The resume of Jonathan Beverly (jrbeverly)"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "tex-resume" {
  name             = "tex-resume"
  description      = "A resume of Jonathan Beverly (jrbeverly) built in LaTeX"
  namespace_id     = "${gitlab_group.main.id}"
  visibility_level = "public"
}
