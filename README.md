# Dotfiles

## Installation

If missing packages, it'll ask for sudo password and install them.

```shell
git clone https://github.com/nicktehrany/dotfiles
cd dotfiles
./bootstrap
```

## Updating submodules

In order to update submodules if their remote repository changes.

```shell
git submodule update --remote --merge
```

## In progress:
  
  * Include hidden files in lfcd (keybinding to show hidden files)
  * Missing local/private git config files
