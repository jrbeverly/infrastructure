resource "gitlab_group" "main" {
  name        = "UWaterloo"
  path        = "uwaterloo"
  description = "University of Waterloo Courseware projects"
  parent_id   = "${var.parent}"
}

resource "gitlab_project" "jollybot" {
  name         = "jollybot"
  description  = "A Prisoners' Dilemma A.I. bot performing an 'Olive Branch' strategy focusing on attempting to cooperate whenever possible"
  namespace_id = "${gitlab_group.main.id}"
}

resource "gitlab_project" "mazes" {
  name         = "mazes"
  description  = "Generate random mazes"
  namespace_id = "${gitlab_group.main.id}"
}

resource "gitlab_project" "animator" {
  name         = "animator"
  description  = "A simple line animation program"
  namespace_id = "${gitlab_group.main.id}"
}

resource "gitlab_project" "automata-net" {
  name         = "automata-net"
  description  = "A .NET Library for Automata"
  namespace_id = "${gitlab_group.main.id}"
}

resource "gitlab_project" "raytracer" {
  name         = "raytracer"
  description  = "Renders an image by tracing the ray of light"
  namespace_id = "${gitlab_group.main.id}"
}

resource "gitlab_project" "jcompiler" {
  name         = "jcompiler"
  description  = "Compiler written for a subset of the Java language"
  namespace_id = "${gitlab_group.main.id}"
}

resource "gitlab_project" "shroud-net" {
  name         = "shroud-net"
  description  = "Lossless steganography in .NET"
  namespace_id = "${gitlab_group.main.id}"
}

resource "gitlab_project" "jotto" {
  name         = "jotto"
  description  = "Jotto, a two person logic-oriented word game where each player picks a secret word and attempts to guess it"
  namespace_id = "${gitlab_group.main.id}"
}

resource "gitlab_project" "distributedrpc" {
  name         = "distributedrpc"
  description  = "Distributed implementation of a remote procedure call (RPC) library"
  namespace_id = "${gitlab_group.main.id}"
}
