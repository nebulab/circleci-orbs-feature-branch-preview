#!/bin/sh -l

echo "Trying to publish orb with version ${GITHUB_REF}"
circleci orb publish source.yml "nebulab/feature-branch-preview@${GITHUB_REF}" --token $CIRCLECI_TOKEN
