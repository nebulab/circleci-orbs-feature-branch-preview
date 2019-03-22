#!/bin/sh -l

# $GITHUB_REF is something like "refs/tags/1.6.2" and we need to take
# only the last part of it.
$version = ${GITHUB_REF/refs\/tags\//}"

echo "Trying to publish orb with version ${version}"
circleci orb publish source.yml "nebulab/feature-branch-preview@${version}" --token $CIRCLECI_TOKEN
