#!/bin/bash

# Ask for the participant's name or identifier
echo "Enter your name or unique identifier (use dashes instead of spaces):"
read PARTICIPANT_NAME

# Ask for the challenge or task name
echo "Enter the challenge or task name:"
read CHALLENGE_NAME

# Combine inputs to create a branch name
BRANCH_NAME="${PARTICIPANT_NAME}/${CHALLENGE_NAME}"
echo "Creating and switching to branch: $BRANCH_NAME"

# Checkout a new branch
git checkout -b "$BRANCH_NAME"

# Add all changes to git
git add .

# Commit changes. Requires a commit message.
echo "Enter commit message:"
read COMMIT_MESSAGE
git commit -m "$COMMIT_MESSAGE"

# Push the new branch to GitHub
git push -u origin "$BRANCH_NAME"

echo "Changes pushed to branch: $BRANCH_NAME"