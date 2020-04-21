#!/bin/sh
## This script install elixir using asdf in your system.

set -e
set -o pipefail
set -o posix

## Clone asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8

## Add this to your bashrc
if [ -f "~/.bashrc" ]; then 
  echo ". $HOME/.asdf/asdf.sh" >> ~/.bashrc
  echo ". $HOME/.asdf/completions/asdf.bash" >> ~/.bashrc
fi

## Run it now to get asdf available
. $HOME/.asdf/asdf.sh

ERLANG_VERSION=${ERLANG_VERSION:-"22.0.7"}
ELIXIR_VERSION=${ELIXIR_VERSION:-"1.10.2"}
## install erlang
asdf plugin-add erlang
asdf install erlang $ERLANG_VERSION
asdf global erlang $ERLANG_VERSION

## install elixir
asdf plugin-add elixir
asdf install elixir $ELIXIR_VERSION
asdf global elixir $ELIXIR_VERSION
