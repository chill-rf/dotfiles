#
# zplug
#

source ~/.zplug/init.zsh

zplug "mollifier/anyframe"
zplug "mollifier/cd-gitroot"
zplug "stedolan/jq", from:gh-r, as:command \
    | zplug "b4b4r07/emoji-cli", if:"which jq"
zplug "b4b4r07/enhancd", of:enhancd.sh
zplug "hchbaw/opp.zsh", do:"__zsh_version 5.0.8"
zplug "zsh-users/zsh-history-substring-search", do:"__zsh_version 4.3"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-completions"
zplug "mrowa44/emojify", as:command
zplug "junegunn/fzf-bin", as:command, from:gh-r, file:fzf
zplug "junegunn/fzf", as:command, of:bin/fzf-tmux
zplug "peco/peco", as:command, from:gh-r, of:"*amd64*"
zplug "b4b4r07/dotfiles", as:command, of:bin/peco-tmux
zplug "b4b4r07/zsh-gomi", as:command, of:bin, file:rm
zplug 'zsh-users/zaw'
zplug 'zsh-users/zsh-autosuggestions'

if ! zplug check --verbose; then
  printf 'Install? [y/N]: '
  if read -q; then
    echo; zplug install
  fi
fi

zplug load --verbose

#
# Autoloadings
#

autoload -Uz add-zsh-hook
autoload -Uz compinit && compinit -u
autoload -Uz url-quote-magic
autoload -Uz vcs_info

#
# ZLE settings
#

zle -N self-insert url-quote-magic

#
# General settings
#

setopt auto_list
setopt auto_menu
setopt auto_pushd
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt ignore_eof
setopt inc_append_history
setopt interactive_comments
setopt no_beep
setopt no_hist_beep
setopt no_list_beep
setopt magic_equal_subst
setopt notify
setopt print_eight_bit
setopt print_exit_value
setopt prompt_subst
setopt pushd_ignore_dups
setopt rm_star_wait
setopt share_history
setopt transient_rprompt

#
# Exports
#

export CLICOLOR=true
export LSCOLORS='exfxcxdxbxGxDxabagacad'
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'
export EDITOR=vim
export HISTFILE=~/.zhistory
export HISTSIZE=1000
export SAVEHIST=1000000
export LANG=ja_JP.UTF-8

#
# Key bindings
#

bindkey -v
bindkey -v '^?' backward-delete-char
bindkey '^[[Z' reverse-menu-complete
bindkey '^@' anyframe-widget-cd-ghq-repository
bindkey '^r' anyframe-widget-put-history

#
# Aliases
#

alias vi='vim'

#
# Module settings
#

# Completion
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' use-cache true
zstyle ':completion:*' verbose yes
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'
zstyle ':completion:*:options' description 'yes'