workflow "Release a new version" {
  on = "release"
  resolves = ["publish-on-orbs-registry"]
}

action "publish-on-orbs-registry" {
  uses = "./publish-on-orbs-registry/"
  secrets = ["CIRCLECI_TOKEN"]
}
