#  Dotfiles

This is a collection of dotfiles and scripts I use for customizing OS X to my liking and setting up the software development tools I use on a day-to-day basis. They should be cloned to your home directory so that the path is `~/dotfiles/`.  The included setup script creates symlinks from your home directory to the files which are located in `~/dotfiles/`.

The setup script is smart enough to back up your existing dotfiles into a `~/dotfiles_old/` directory if you already have any dotfiles of the same name as the dotfile symlinks being created in your home directory.

The install script will:

- back up any existing dotfiles in your home directory to `~/dotfiles_old/`
- create symlinks to the dotfiles in `~/dotfiles/` in your home directory
- clone the `oh-my-zsh` repository from my GitHub (for use with `zsh`)
- check to see if `zsh` is installed, if it isn't, try to install it
- if zsh is installed, run a `chsh -s` to set it as the default shell

## Features

- git aliases
- zsh aliases
- docker aliases
- vscode settings
- sensible [OS X defaults](osx/set-defaults.sh)
- [Install script](setup.sh)

## Installation

```sh
$ git clone https://github.com/horstenwillem/dotfiles ~/dotfiles
$ cd ~/dotfiles
$ chmod +x setup.sh
$ ./setup.sh
```

## License

The code is available under the [MIT license](LICENSE).
