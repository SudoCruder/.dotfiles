# .dotfiles

## Setup git
`chmod +x git_setup.sh`  
`./git_setup.sh`


## Install homebrew
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`


## Symlink files to appropriate places
`make`


## Install all brew dependencies
`brew bundle`

## Start services
`brew services start postgresql`

## Install Rust
`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`

