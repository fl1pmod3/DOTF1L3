# environment
export EDITOR="emacsclient -c -a emacs"
export TERMINAL="kitty"
export BROWSER="firefox"
export PATH="$HOME/.local/bin:$PATH"

# SHELL UX
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/synd1cat3.omp.json)"

# fastfetch banner
fastfetch

# ALIASES
alias doom="emacsclient -c -a emacs"
alias ls="ls --color=auto"
alias cls="clear"

# PROMPT CLEANUP
setopt PROMPT_SUBST
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# INTERACTIVE TOOLS
autoload -U compinit && compinit
autoload -U colors && colors
