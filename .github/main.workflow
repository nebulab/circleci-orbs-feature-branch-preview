workflow "Release a new production version" {
  on = "release"
  resolves = ["publish-on-orbs-registry"]
}

workflow "Release a new development version" {
  on = "push"
  resolves = ["publish-on-orbs-registry-dev"]
}

action "publish-on-orbs-registry" {
  uses = "./publish-on-orbs-registry/"
  secrets = ["CIRCLECI_TOKEN"]
}

action "publish-on-orbs-registry-dev" {
  uses = "./publish-on-orbs-registry/"
  secrets = ["CIRCLECI_TOKEN"]
  args = "dev"
}
