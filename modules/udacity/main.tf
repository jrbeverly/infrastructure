resource "gitlab_group" "main" {
  name        = "Udacity"
  path        = "udacity"
  description = "Udacity Nanodegree portfolio projects"
  parent_id   = "${var.parent}"
}

resource "gitlab_project" "myreads" {
  name         = "myreads"
  description  = "A digital bookshelf app that allows you to select and categorize books you have read, are currently reading, or want to read"
  namespace_id = "${gitlab_group.main.id}"
}

resource "gitlab_project" "readable" {
  name         = "readable"
  description  = "A social content and discussion web application"
  namespace_id = "${gitlab_group.main.id}"
}

resource "gitlab_project" "udacicards" {
  name         = "udacicards"
  description  = "Mobile Flashcards"
  namespace_id = "${gitlab_group.main.id}"
}
