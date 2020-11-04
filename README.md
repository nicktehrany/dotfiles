# Dotfiles <a href="https://opensource.org/licenses/MIT"> <img src="https://img.shields.io/badge/License-MIT-yellow.svg" /></a> [![Build Status](https://travis-ci.com/nicktehrany/dotfiles.svg?branch=master)](https://travis-ci.com/nicktehrany/dotfiles)

## Installation

Use at **OWN RISK**, the build pipeline runs a linux focal vm with all required packages already installed. Check the [.travis.yml](https://github.com/nicktehrany/dotfiles/blob/master/.travis.yml) for packages that will be installed, if not already installed. All existing links or config files will be overwritten! (Check [.install.conf.yaml](https://github.com/nicktehrany/dotfiles/blob/dotbot_implement/install.conf.yaml) for all links)

```shell
git clone https://github.com/nicktehrany/dotfiles
cd dotfiles
./install
```

Then just open a new terminal. The updating of submodules can sometimes take a couple of seconds.

## Updating submodules

In order to update submodules if their remote repository changes.

```shell
git submodule update --remote --merge
```

## In progress

* Missing local/private git config files
* Vscode
* Expand tmux conf
