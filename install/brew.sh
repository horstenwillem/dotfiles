#!/bin/bash

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install the Homebrew packages I use on a day-to-day basis.
#
# - Languages: nvm (Node.js)
# - Databases: Progres, Mongo
# - Fuck (https://github.com/nvbn/thefuck): Correct your previous command. Note
#   that this needs to be added to zsh or bash. See the project README.
# - Tree (http://mama.indstate.edu/users/ice/tree/): A directory listing utility
#   that produces a depth indented listing of files.
# Note that I install nvm (https://github.com/creationix/nvm) instead
# of installing Node directly. This gives me more explicit control over
# which version I'm using.

# install nvm
ruby -e "$(curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash)"

apps=(
    bash-completion2
    docker
    docker-machine
    git
    git-flow-avh
    heroku
    mongodb
    postgresql
    thefuck
    z
    zsh
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup
