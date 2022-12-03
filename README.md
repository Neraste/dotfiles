# Dotfiles

Personnal collection of dotfiles.

## Installation

Use GNU Stow to create all the necessary symlincs:

```sh
git clone git@github.com:neraste/dotfiles ~/.dotfiles
cd ~/.dotfiles
stow vim zsh  # any available module you want
```

## Customization

Each dotfile should be customizable by a local file having the same name, suffixed by `-local`.
