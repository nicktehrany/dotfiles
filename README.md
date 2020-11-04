# Dotfiles <a href="https://opensource.org/licenses/MIT"> <img src="https://img.shields.io/badge/License-MIT-yellow.svg" /></a> [![Build Status](https://travis-ci.com/nicktehrany/dotfiles.svg?branch=master)](https://travis-ci.com/nicktehrany/dotfiles)

## Installation

Use at **OWN RISK**, the build pipeline runs a linux focal vm with all required packages already installed. Check the [.travis.yml](https://github.com/nicktehrany/dotfiles/blob/master/.travis.yml) file to see installed packages, and install same packages before installing, to avoid problems.

```shell
git clone https://github.com/nicktehrany/dotfiles
cd dotfiles
./install
```

Then just open a new terminal.

## Updating submodules

In order to update submodules if their remote repository changes.

```shell
git submodule update --remote --merge
```

## In progress

* Missing local/private git config files
* Vscode
* Expand tmux conf
