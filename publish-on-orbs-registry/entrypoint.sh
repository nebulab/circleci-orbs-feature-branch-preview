#!/bin/sh -l

# Setup using the secret CIRCLECI_TOKEN
circleci setup --no-prompt --token $CIRCLECI_TOKEN

# Publish the orb on CircleCI Orbs Registry
circleci orb publish source.yml nebulab/feature-branch-preview@$GITHUB_REF
