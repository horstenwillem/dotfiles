#!/bin/sh

#
# This script configures my Node.js development setup. Note that
# nvm is installed by the Homebrew install script.
#

if test ! $(which nvm)
then
  echo "Installing a stable version of Node..."

  # Install the latest stable version of node
  nvm install stable

  # Switch to the installed version
  nvm use node

  # Use the stable version of node by default
  nvm alias default node
fi

# All `npm install <pkg>` commands will pin to the version that was available at the time you run the command
npm config set save-exact = true

# Globally install with npm
# To list globally installed npm packages and version: npm list -g --depth=0
#
# Some descriptions:
#
# diff-so-fancy — sexy git diffs
packages=(
  diff-so-fancy
  jest
  nodemon
)

npm install -g "${packages[@]}"
