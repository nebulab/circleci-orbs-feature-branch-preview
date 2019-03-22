#!/bin/sh -l

env=$1

if [ $env == "dev" ]; then
  # $GITHUB_REF is something like "refs/heads/branch-name"
  git_branch=${GITHUB_REF/refs\/heads\//}
  version_without_slash=${git_branch//\//-}
  version="dev:${version_without_slash}"
else
  # $GITHUB_REF is something like "refs/tags/1.6.2"
  version=${GITHUB_REF/refs\/tags\//}
fi

echo "Trying to publish orb with version ${version}"
circleci orb publish source.yml "nebulab/feature-branch-preview@${version}" --token $CIRCLECI_TOKEN
