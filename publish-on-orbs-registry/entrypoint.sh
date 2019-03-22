#!/bin/sh -l

# Publish the orb on CircleCI Orbs Registry
circleci orb publish source.yml "nebulab/feature-branch-preview@${GITHUB_REF}" --token $CIRCLECI_TOKEN
