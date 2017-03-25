export TERM="xterm-256color"
#  to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
 ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="muse"
# POWERLEVEL9K_MODE='awesome-fontconfig'
 POWERLEVEL9K_MODE='awesome-patched'
 POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir rbenv vcs)
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
HIST_STAMPS="dd-mm-yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(colored-man-pages git git-flow git-flow-completion history-substring-search zsh-completions sudo z cp zsh-syntax-highlighting command-not-found history yarn extract debian)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
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
 alias ports='netstat -tulanp'
 alias wget='wget -c'

 urgarfc() {
    egrep -Ri "$1" .
 }

 alias urgar=urgarfc
 alias buscar='find . | egrep -i --color'
 buscaren (){
     find $0 | egrep -i --color $1
 }
 alias buscarps='ps -A | egrep -i --color'

# Ember CLI
 alias e=ember
 alias es="ember s"
 alias eg="ember g"
 alias ets="ember test --server"
 alias tree="tree -C"

alias -g G="| egrep -i --color"
mkcd () { mkdir -p "$@" && cd "$@"; }
alias c='pygmentize -g'
#fpf () { echo `pwd`/`ls $@`}
alias fpf='readlink -f'
# require: brew install coreutils

# https://github.com/supercrabtree/k
# alias ll='k'

function hiddenOn() { defaults write com.apple.Finder AppleShowAllFiles YES ; killall Finder;}
function hiddenOff() { defaults write com.apple.Finder AppleShowAllFiles NO ; killall Finder;}
function myip() {
    ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
	ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
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
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
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

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PATH="$PATH:$HOME/Library/Android/sdk/tools:$HOME/Library/Android/sdk/platform-tools"

if test -f ~/.rvm/scripts/rvm; then
   [ "$(type rvm)" = "function" ] || source ~/.rvm/scripts/rvm
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

. ~/git-repos/z/z.sh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# tabtab source for yarn package
# uninstall by removing these lines or running `tabtab uninstall yarn`
[[ -f /Users/santiagobandiera/.yarn-cache/.global/node_modules/tabtab/.completions/yarn.zsh ]] && . /Users/santiagobandiera/.yarn-cache/.global/node_modules/tabtab/.completions/yarn.zsh
