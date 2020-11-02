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

## In progress
  
* Missing local/private git config files
* Add CI for automatic updating of submodles, currently manually updating submodules once in a while
* Vscode
* tmux config
