workflow "Release a new version" {
  on = "push"
  resolves = ["publish-on-orbs-registry"]
}

action "publish-on-orbs-registry" {
  uses = "./publish-on-orbs-registry/"
  secrets = ["CIRCLECI_TOKEN"]
}
