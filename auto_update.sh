#!/bin/bash

# Configuration
REPO_PATH="/c/Users/dipa4/Unix-Project" # Update this to your local repo path
BRANCH="main" # Change to your branch name if it's not 'main'
COMMIT_MESSAGE="Auto-update commit on $(date +'%Y-%m-%d %H:%M:%S')"

# Navigate to the repository
cd "$REPO_PATH" || { echo "Repository not found at $REPO_PATH"; exit 1; }

# Pull latest changes
echo "Pulling latest changes from remote repository..."
git pull origin "$BRANCH"

# Add all changes to staging
echo "Adding changes to staging..."
git add -A

# Commit changes
echo "Committing changes..."
git commit -m "$COMMIT_MESSAGE"

# Push changes
echo "Pushing changes to remote repository..."
git push origin "$BRANCH"

echo "Update and commit process completed."
