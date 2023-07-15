# Dotfiles

Personal dotfiles management using [GNU Stow](https://www.gnu.org/software/stow/).

## Usage
 
1. Clone this repository into your home directory.
2. Run `stow <directory>` to symlink the dotfiles you want to use.
3. Run `stow -D <directory>` to remove the symlinks.
 
## Overview
  
Below is a schema demonstrating such a setup for 3 stow directories of config files, `vim`, `neovim` and `tmux`:

![stow schema]()
