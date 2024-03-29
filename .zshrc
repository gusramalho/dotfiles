
# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
#if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
#  source /usr/share/zsh/manjaro-zsh-config
#fi
# Use manjaro zsh prompt
#if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#  source /usr/share/zsh/manjaro-zsh-prompt
#fi

export TERM=xterm-256color

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(starship init zsh)"
eval "$(rbenv init - zsh)"

# Alias
alias nv="nvim"
alias ls="exa --icons"
alias bat="bat --style=auto"
alias ll="exa -la --icons"


setopt autocd

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
