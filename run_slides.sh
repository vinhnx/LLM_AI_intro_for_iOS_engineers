#!/bin/bash

# Check if 'slides' is installed
if ! command -v slides &> /dev/null; then
  echo "'slides' is not installed. Installing using Homebrew..."
  brew install slides

  # Verify installation succeeded
  if [ $? -ne 0 ]; then
    echo "Failed to install 'slides'. Please check your Homebrew setup."
    exit 1
  fi
else
  echo "'slides' is already installed."
fi

# Run the slides command
echo "Running slides..."
slides README.md

