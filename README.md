# VIM Config

## Introduction

Personal vim config files, nothing shiny.

## Installation

On Linux or OS X, clone the repository and symlink files:
```sh
$ ln -s vimrc ~/.vimrc
$ ln -s vim ~/.vim
```

Initialize submodules:
```sh
$ git submodule init
$ git submodule update
```

All swap and backup files are located in `~/.tmp` instead near the edited file (default).
Make sure the directory exist before editing file, otherwise there will be errors:
```sh
$ mkdir ~/.tmp
```

## Customization

Further customization may be added into `vim/my/$USER.vim`, which is loaded by default.
Mine is included `jfy.vim`.

## Plugins and colors
### plugins
```sh
$ git submodule add https://github.com/vim-scripts/a.vim vim/bundle/a
$ git submodule add https://github.com/fholgado/minibufexpl.vim vim/bundle/minibufexpl
$ git submodule add https://github.com/vim-scripts/TaskList.vim vim/bundle/tasklist
$ git submodule add https://github.com/fatih/vim-go vim/bundle/vim-go
```

### Colors

```sh
$ git submodule add https://github.com/vim-scripts/Darcula-Color-Scheme vim/bundle/darcula
$ git submodule add https://github.com/vim-scripts/Fruidle vim/bundle/fruidle
$ git submodule add https://github.com/vim-scripts/molokai vim/bundle/molokai
$ git submodule add https://github.com/vim-scripts/Zenburn vim/bundle/zenburn
$ git submodule add https://github.com/vim-scripts/CSApprox.git vim/bundle/csapprox
```

