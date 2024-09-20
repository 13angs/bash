#!/bin/bash

# Define environment variables that map usernames to email addresses
export github_user1="github_user1@gmail.com"
export github_user2="github_user2@gmail.com"
export github_user3="github_user3@gmail.com"

# Simulate the GitHub username (you can change this value for testing)
GITHUB_USERNAME="github_user1"

# Check if there is an environment variable matching the username
RECIPIENT_EMAIL=$(eval echo "\${github_user1}")

echo $RECIPIENT_EMAIL

# If no matching email is found, use a default email
if [ -z "$RECIPIENT_EMAIL" ]; then
  RECIPIENT_EMAIL="default@example.com"
fi

# Print the result
echo "The recipient email for ${GITHUB_USERNAME} is: ${RECIPIENT_EMAIL}"