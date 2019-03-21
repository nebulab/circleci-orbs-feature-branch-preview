# feature-branch-preview CircleCI Orb

[feature-branch-preview](https://circleci.com/orbs/registry/orb/nebulab/feature-branch-preview)

This repository just tracks code changes of our feature branch preview Orb,
which is already public under CircleCi but there's no easy way to track
changes between versions.

## Description

An Orb that can be used to connect via SSH to a remote server running a Docker
daemon to spin up containers that serve preview apps with code taken from
GitHub PRs.

The link of the newly created app will be posted in your PR, into the
Deployments section.

## Usage

Add the following to your CircleCI configuration:

```
version: 2.1
orbs:
  feature-branch: nebulab/feature-branch-preview
workflows:
  cool-workflow:
    jobs:
    - feature-branch/preview:
        domain: <domain-for-preview-apps>
        github_repo: <your-github-repository>
        github_token: <your-gh-auth-token>
        letsencrypt_email: <email-for-ssl-cert>
        server: <docker-server-to-run-containers>
        user: <docker-server-user>
```

## Publish on Orbs Registry

To publish a new version it's just needed to [create a new release on this
repository](https://github.com/nebulab/circleci-orbs-feature-branch-preview/releases).
A GitHub action will take care of everything else.

**NOTE:** The release tag name should match what CircleCI Orbs Registry expects,
so:

- `1.5.0` :thumbsup:
- `v1.2` :thumbsdown:

## Contributing

Bug reports and pull requests are welcome!

## License

feature-branch-preview is copyright © 2019 [Nebulab](http://nebulab.it/). It is
free software, and may be redistributed under the terms specified in the
[CircleCI Orbs License](https://circleci.com/orbs/registry/licensing).

## About

![Nebulab](http://nebulab.it/assets/images/public/logo.svg)

feature-branch-preview is funded and maintained by the [Nebulab](http://nebulab.it/)
team.

We firmly believe in the power of open-source. [Contact us](http://nebulab.it/contact-us/)
if you like our work and you need help with your project design or development.
