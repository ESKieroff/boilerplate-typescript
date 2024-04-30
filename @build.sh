#!/bin/bash

# Define the GitHub repository URL you want to clone
REPO_URL="https://github.com/your-username/your-repository.git"

# Define the directory name where the repository will be cloned
DIR_NAME="your-repository-name"

# Check if the directory already exists
if [ ! -d ../$DIR_NAME ]; then
  git clone $REPO_URL ../$DIR_NAME
fi

# Navigate to the repository directory
cd ../$DIR_NAME

# Checkout to the desired branch (optional)
# git checkout your-branch

# Make necessary code changes
# (e.g., editing files, adding new files, etc.)

# Add all changes to the commit
git add .

# Commit the changes
git commit -m "Commit description"

# Push the changes to the remote repository
git push origin your-branch

# Navigate to the build directory
cd product/aggregate

# Execute Maven to build the project
mvn clean install -T 1C

# Navigate back to the original directory
cd ../..
