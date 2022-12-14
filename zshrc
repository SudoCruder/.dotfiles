if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # ----------------------------------------------------------------------- #
  # ----------------------------------------------------------------------- #
  # KALI
  # ----------------------------------------------------------------------- #
  # ----------------------------------------------------------------------- #

else
  # ----------------------------------------------------------------------- #
  # ----------------------------------------------------------------------- #
  # MACOS
  # ----------------------------------------------------------------------- #
  # ----------------------------------------------------------------------- #

  # Aliases
  # ----------------------------------------------------------------------- #
  source ~/.aliases


  # Brew
  # ----------------------------------------------------------------------- #
  eval "$(/opt/homebrew/bin/brew shellenv)"
  alias brew="/opt/homebrew/bin/brew"

  eval "$(starship init zsh)"


  # EXPORTS
  # ----------------------------------------------------------------------- #
  export EDITOR="vim"

  export NVM_DIR="$HOME/.nvm"
    [ -s "/opt/homebrew/opt/nvm/nvm.sh"  ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
fi
