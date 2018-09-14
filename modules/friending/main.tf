resource "gitlab_group" "main" {
  name        = "Friending"
  path        = "friending"
  description = "Friending is an online dating, friendship, and social networking mobile application that features member-created quizzes"
  parent_id   = "${var.parent}"
  visibility_level = "public"
}

resource "gitlab_project" "friending" {
  name         = "friending"
  description  = "Friending prototype created using the prototyping tool Proto.io"
  namespace_id = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "friending-manual" {
  name         = "friending-manual"
  description  = "The Friending user manual provides info and tips to help you understand the mobile application"
  namespace_id = "${gitlab_group.main.id}"
  visibility_level = "public"
}

resource "gitlab_project" "friending-user-guide" {
  name         = "friending-user-guide"
  description  = "The Friending user manual provided as a web resource"
  namespace_id = "${gitlab_group.main.id}"
  visibility_level = "public"
}
