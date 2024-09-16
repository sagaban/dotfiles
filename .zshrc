# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# zmodload zsh/zprof # then run `zprof`
export TERM="xterm-256color"
#  to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="muse"

# POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_MODE='nerdfont-complete'

 POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon virtualenv dir rbenv vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status custom_commit node_version battery history time)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# show the commit number
 POWERLEVEL9K_SHOW_CHANGESET=false
 POWERLEVEL9K_CUSTOM_COMMIT="zsh_show_current_commit"
 POWERLEVEL9K_CUSTOM_COMMIT_BACKGROUND="magenta"
 POWERLEVEL9K_CUSTOM_COMMIT_FOREGROUND="black"
 # POWERLEVEL9K_COLOR_SCHEME="light"
 POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

# I make it with no background
 POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
 POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
 POWERLEVEL9K_OS_ICON_BACKGROUND="none"
 POWERLEVEL9K_DIR_HOME_FOREGROUND='blue'
 POWERLEVEL9K_DIR_HOME_BACKGROUND='none'
 POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='blue'
 POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='none'
 POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='blue'
 POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='none'
 POWERLEVEL9K_VIRTUALENV_FOREGROUND='salmon1'
 POWERLEVEL9K_VIRTUALENV_BACKGROUND='none'
 POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'
 POWERLEVEL9K_VCS_CLEAN_BACKGROUND='none'
 POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
 POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='none'
 POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='yellow'
 POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='none'
 POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'
 POWERLEVEL9K_VCS_CLEAN_BACKGROUND='none'
 POWERLEVEL9K_CUSTOM_COMMIT_BACKGROUND="none"
 POWERLEVEL9K_CUSTOM_COMMIT_FOREGROUND="magenta"
 POWERLEVEL9K_NODE_VERSION_BACKGROUND="none"
 POWERLEVEL9K_NODE_VERSION_FOREGROUND="green"
 POWERLEVEL9K_STATUS_OK_BACKGROUND="none"
 POWERLEVEL9K_STATUS_ERROR_BACKGROUND="none"

 zsh_show_current_commit(){
   if [ -d .git ] || git rev-parse --git-dir > /dev/null 2>&1; then
      git log -1 --pretty=oneline | cut -c -8
   fi
}

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="dd-mm-yyyy" # this does NOT work
HIST_STAMPS="%d/%m/%y %T"

# HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000
export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY


# setopt BANG_HIST                 # Treat the '!' character specially during expansion.
# setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
# setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
# setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
# setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
# setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
# setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
# setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
# setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
# setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
# setopt HIST_BEEP                 # Beep when accessing nonexistent history.

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder



# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(colored-man-pages git history-substring-search sudo z cp zsh-completions command-not-found history extract debian docker docker-compose copypath virtualenv zsh-autosuggestions zsh-syntax-highlighting)

# removed plugins and thier config
## zsh-nvm
# export NVM_LAZY_LOAD=true
# export NVM_COMPLETION=true

#removed
# plugins=(zsh-nvm)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:~/.local/bin:/Users/santiago/.local/scripts:/Users/santiago/.local/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
export PATH=~/.npm-global/bin:$PATH

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#  alias ls=exa
 alias ls=lsd
 alias ports='netstat -tulanp'
 alias wget='wget -c'
# alias open=xdg-open # This is for linux
# alias df=dfc
 alias df=duf


 urgar() {
   #  egrep -Ri "$1" .
   grep -rnw . -e "$1"
 }

 alias gcob="git branch | fzf --height 33% --reverse --border | xargs git checkout"
 alias gcoba="git branch -a| fzf --height 33% --reverse --border | xargs git checkout"
 alias gcot="git branch --remote| fzf --height 33% --reverse --border | xargs git checkout -t"
 alias gc-="git checkout -- ."
 alias gbdas='git checkout -q master && git for-each-ref refs/heads/ "--format=%(refname:short)" | while read branch; do mergeBase=$(git merge-base master $branch) && [[ $(git cherry master $(git commit-tree $(git rev-parse "$branch^{tree}") -p $mergeBase -m _)) == "-"* ]] && git branch -D $branch; done
'

 #alias buscar='find . | egrep -i --color'
alias buscar='fd -H'

 buscaren (){
     fd -H $0 | egrep -i --color $1
 }

alias buscarps='ps -A | egrep -i --color'

alias tree="tree -C"

alias -g G="| egrep -i --color"
mkcd () { mkdir -p "$@" && cd "$@"; }
alias c='pygmentize -g'
#fpf () { echo `pwd`/`ls $@`}
alias fpf='readlink -f'
# require: brew install coreutils

# https://github.com/supercrabtree/k
# alias ll='k'
# alias ls='~/software/els --els-icons=fontawesome'
alias ll='ls -l'
alias la='ll -a'
alias m=micro
alias rm=trash
alias nukedocker="docker compose down --rmi all -v --remove-orphans"

#function hiddenOn() { defaults write com.apple.Finder AppleShowAllFiles YES ; killall Finder;}
#function hiddenOff() { defaults write com.apple.Finder AppleShowAllFiles NO ; killall Finder;}
function myip() {
#    ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
#	ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
#	ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
#	ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
#	ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig wlp2s0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "wlp2s0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	}

function usd() {
   amount=${1:-1}
   usd=$(curl https://static.coins.infobae.com/cotizacion-simple/dolar-libre-riesgo.json -s | jq -r '.items[2].unico')
   echo $((usd * amount))
}

function eur() {
   usd="$(usd $1)"
   e=$(sed 's/\..*//' <<< $(curl https://api-dolar-argentina.herokuapp.com/api/euro/nacion -s | jq -r '.venta'))
   u=$(sed 's/\..*//' <<< $(curl https://api-dolar-argentina.herokuapp.com/api/nacion -s | jq -r '.venta'))
   echo $((usd * e / u))
}

s() {
   if [ -z "$1" ]; then
      pwd > ~/.save_dir/default ;
   else
      pwd > ~/.save_dir/$1
   fi
}
r() {
   if [ -z "$1" ]; then
      echo "$(cat ~/.save_dir/default)" ;
   else
      echo "$(cat ~/.save_dir/$1)" ;
   fi
}

function sfpf() {
	fpf $1 | xclip -sel clip;
}

# jsut use https://www.npmjs.com/package/@antfu/ni
# function dev() {
#    if [ -f "./package-lock.json" ]
#    then
#       npm run dev
#    fi
#    if [ -f "./yarn.lock" ]
#    then
#       yarn dev
#    fi
# }


# alias xcd='cd "$(xplr --print-pwd-as-result)"'

function yy() {
   local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
   yazi "$@" --cwd-file="$tmp"
   if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
      builtin cd -- "$cwd"
   fi
   rm -f -- "$tmp"
}

###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}
COMP_WORDBREAKS=${COMP_WORDBREAKS/@/}
export COMP_WORDBREAKS

if type complete &>/dev/null; then
  _npm_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###

export PATH="$PATH:$HOME/.yarn/bin" # Add YARN to PATH for scripting

# Hack
export FONTAWESOME_NPM_AUTH_TOKEN="D7725E95-A9B3-45D0-89CF-1F6B42E8C195"

# https://github.com/lukechilds/zsh-nvm plugin does not work with npx
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. ~/git-repos/z/z.sh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# mac complains
# source /usr/share/doc/fzf/examples/key-bindings.zsh
# source /usr/share/doc/fzf/examples/completion.zsh

unalias z 2> /dev/null
z() {
   [ $# -gt 0 ] && _z "$*" && return
   cd "$(_z -l 2>&1 | fzf --height 40% --reverse --inline-info +s --tac --query "$*" | sed 's/^[0-9,.]* *//')"
}



export PATH="$HOME/.cargo/bin:$PATH"

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -s "/usr/share/rvm/scripts/rvm" ]] && . "/usr/share/rvm/scripts/rvm"

if [ -f /usr/share/powerline/bindings/zsh/powerline.zsh ]; then
   source /usr/share/powerline/bindings/zsh/powerline.zsh
fi

# macs complains
# source /home/satiago/.config/broot/launcher/bash/br

if command -v theme.sh > /dev/null; then
	[ -e ~/.theme_history ] && theme.sh "$(theme.sh -l|tail -n1)"

	# Optional

	# Bind C-o to the last theme.
	last_theme() {
		theme.sh "$(theme.sh -l|tail -n2|head -n1)"
	}

	zle -N last_theme
	bindkey '^O' last_theme

	alias th='theme.sh -i'

	# Interactively load a light theme
	alias thl='theme.sh --light -i'

	# Interactively load a dark theme
	alias thd='theme.sh --dark -i'
fi

# source /home/santiago/.npm-run.plugin.zsh/npm-run.plugin.zsh

# bun completions
[ -s "/home/santiago/.bun/_bun" ] && source "/home/santiago/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# fnm
export PATH="/home/santiago/.local/share/fnm:$PATH"
eval "$(fnm env --use-on-cd)"

# Blur {{{
#if [[ $(ps --no-header -p $PPID -o comm -A) =~ '^yakuake|kitty$' ]]; then
#	for wid in $(xdotool search --pid $PPID); do
#		xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $wid; done
#fi
# }}}

# fnm
export PATH="/Users/santiago/Library/Application Support/fnm:$PATH"
eval "`fnm env`"

source /Users/santiago/.config/broot/launcher/bash/br
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

eval "$(atuin init zsh)"
#eval "$(pyenv virtualenv-init -)"
