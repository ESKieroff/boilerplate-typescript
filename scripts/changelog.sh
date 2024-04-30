#!/bin/bash

# Generate a changelog using git log
git log $(git describe --tags --abbrev=0)..HEAD --pretty=format:"- %s" > CHANGELOG.md
