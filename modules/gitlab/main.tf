resource "gitlab_group" "main" {
  name        = "Gitlab"
  path        = "gitlab"
  description = "Projects that assist in the administration of Gitlab"
  parent_id   = "${var.parent}"
}

resource "gitlab_project" "issues-style" {
  name         = "issues-style"
  description  = "A style guide for issue management, release versioning, Git Flow and repository documentation"
  namespace_id = "${gitlab_group.main.id}"
}

resource "gitlab_project" "gitlab-ci-yml" {
  name         = "gitlab-ci-yml"
  description  = "A collection of .gitlab-ci.yml templates using the jrbeverly-docker Images"
  namespace_id = "${gitlab_group.main.id}"
}
