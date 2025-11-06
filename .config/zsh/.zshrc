# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/brown/.config/zsh/completions:"* ]]; then export FPATH="/home/brown/.config/zsh/completions:$FPATH"; fi
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
ZSH_THEME="powerlevel10k/powerlevel10k"
source "${HOME}/.config/zsh/${Z_THEME}"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#
#


autoload bashcompinit
autoload -Uz tetriscurses
bashcompinit


export _JAVA_AWT_WM_NONREPARENTING=1
export XDG_CURRENT_DESKTOP=Unity
wmname LG3D
zstyle ':completion:*' hosts off

# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi
#ZSH_THEME="emotty"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "arrow" "powerlevel10k/powerlevel10k" )
##source "$HOME/.vim/autoload/gruvbox_256palette.sh"
# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"
unsetopt correct_all
setopt correct
# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
#eval 'dircolors ~/.dircolors' > /dev/null
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init --path)"
source /usr/share/doc/find-the-command/ftc.zsh
plugins=(
  zbell
  vi-mode
  zsh-autosuggestions
  zsh-syntax-highlighting
	man
	profiles
	eza
	rsync
	heroku
	docker
	docker-compose
  colorize
	podman
	kubectl
	mvn
	postgres
	minikube
	direnv
  history-substring-search
	kubectx
  node
  nodenv
  systemadmin
  rsync
  aws
  virtualenv
  archlinux
  direnv
	zoxide
  copypath
  gitignore
  colored-man-pages
)

function j() {
    __zoxide_z "$@"
}

function ji() {
    __zoxide_zi "$@"
}
source $ZSH/oh-my-zsh.sh
source /opt/google-cloud-cli/completion.zsh.inc
# User configuration
#ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export EDITOR=nvim
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
fpath+=${ZDOTDIR:-~}/.zsh_functions
source ${HOME}/.aliases
source ${HOME}/.bash_functions
alias luamake=${HOME}/lua-language-server/3rd/luamake/luamake
LF_ICONS=$(sed ~/.config/lf/diricons \
            -e '/^[ \t]*#/d'       \
            -e '/^[ \t]*$/d'       \
            -e 's/[ \t]\+/=/g'     \
            -e 's/$/ /')
LF_ICONS=${LF_ICONS//$'\n'/:}
export LF_ICONS
PROMPT_EOL_MARK=''
typeset -aU path

export WINEPREFIX="$XDG_DATA_HOME"/wine
export RUST=${HOME}/.cargo/bin
export HISTFILE="$XDG_STATE_HOME"/zsh/histoy
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export PATH=/usr/local/bin:$JDTLS_HOME:$GO:$LTEX:$GEM:$TOMCAT:$SCALA_BIN:$LOCAL_BIN:$QT5:$RUST:$VSCodium:$VIMRUNTIME:$ANDROID_HOME:$ANDROID_EMULATOR_HOME:$ANDROID_PREFS_ROOT/build-tools/29.0.3:$P4MERGE:$JAVA_JDK:$ANDROID_PREFS_ROOT/emulator/:$LOCAL_BIN:$ANDROID_PREFS_ROOT/system-images/:$SASS:$DART:$ROBO_3T:$NODE:$GROOVY_BIN:$GRADEL_BIN:/usr/bin:/bin:/usr/local/games:/usr/games:$HOME/.local/bin:/usr/share/games:/usr/local/sbin:/usr/sbin:/sbin:~/.local/bin:/usr/local/lib/nodejs/bin:/snap/bin:$MVN_HOME:$MVN_BIN:~/.config/composer/vendor/bin:$STUDIO_HOME:$PATH

# pnpm
export PNPM_HOME="${HOME}/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
#
function osc7 {
    local LC_ALL=C
    export LC_ALL

    setopt localoptions extendedglob
    input=( ${(s::)PWD} )
    uri=${(j::)input/(#b)([^A-Za-z0-9_.\!~*\'\(\)-\/])/%${(l:2::0:)$(([##16]#match))}}
    print -n "\e]7;file://${HOSTNAME}${uri}\e\\"
}

add-zsh-hook -Uz chpwd osc7

# precmd() {
#     print -Pn "\e]133;A\e\\"
# }
source /usr/share/nvm/init-nvm.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export BEMENU_OPTS="--tb '#6272a4'\
 --tf '#f8f8f2'\
 --fb '#282a36'\
 --ff '#f8f8f2'\
 --nb '#282a36'\
 --nf '#6272a4'\
 --hb '#44475a'\
 --hf '#50fa7b'\
 --sb '#44475a'\
 --sf '#50fa7b'\
 --scb '#282a36'\
 --scf '#ff79c6'"

[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

source ${HOME}/.config/broot/launcher/bash/br

# bun completions
[ -s "${HOME}/.bun/_bun" ] && source "${HOME}/.bun/_bun"
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true
export PATH="$PATH:/opt/nvim-linux64/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/brown/app/google-cloud-sdk/path.zsh.inc' ]; then
  . '/home/brown/app/google-cloud-sdk/path.zsh.inc';
fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/brown/app/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/brown/app/google-cloud-sdk/completion.zsh.inc'; fi
setopt EXTENDED_HISTORY
fpath=(/home/brown/.local/share/zsh-completion/completions $fpath) # avalanche completion
rm -f ~/.zcompdump; compinit # avalanche completion
autoload -U compinit; compinit

# add Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin
source /usr/share/doc/find-the-command/ftc.zsh

# tabtab source for packages
# uninstall by removing these lines

source ${HOME}/.zshenv
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true
. "$HOME/.deno/env"

eval "$(zoxide init zsh)"
