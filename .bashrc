# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias ll='ls -la'
alias po='sudo poweroff'
alias cl='clear'
alias tmux='tmux -2'
alias gs='git status'
alias brs='sudo brightnessctl set'
alias xbpsi='sudo xbps-install -Su'
alias xbpsr='sudo xbps-remove -RoO'
alias zbr='zig build run'
alias zrm='zig run main.zig'
alias brb='bun run build'
alias brd='bun run dev'
alias py='python main.py'
alias vi='nvim'
alias vim='nvim'
alias zine='zine --debounce 1000 --port 3000'

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/korg/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export LIBVA_DRIVER_NAME=libva-intel-driver
eval "$(/home/korg/.local/bin/mise activate bash)"
. "$HOME/.cargo/env"
