# ─── Instant prompt (must stay near top) ──────────────────────────────────────
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_DISABLE_COMPFIX=true
ZSH_COMPDUMP="$HOME/.cache/.zcompdump"
# ─── Oh-my-zsh ────────────────────────────────────────────────────────────────
ZSH_THEME="powerlevel10k/powerlevel10k"

CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"   # faster git status on large repos

ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE="20"
ZSH_AUTOSUGGEST_USE_ASYNC=1

plugins=(
  vi-mode
  zbell
  zsh-autosuggestions
  zsh-syntax-highlighting
  history-substring-search
  colored-man-pages
  colorize
  direnv
  rsync
  virtualenv
  zoxide
)

source $ZSH/oh-my-zsh.sh

# ─── Shell options ─────────────────────────────────────────────────────────────
unsetopt correct_all
setopt correct
setopt EXTENDED_HISTORY
PROMPT_EOL_MARK=''

# ─── Ranger indicator ─────────────────────────────────────────────────────────
[[ -n "$RANGER_LEVEL" ]] && export PS1="[ranger]$PS1"

# ─── Editor ───────────────────────────────────────────────────────────────────
export EDITOR=nvim

# ─── Java/WM ──────────────────────────────────────────────────────────────────
export _JAVA_AWT_WM_NONREPARENTING=1
export XDG_CURRENT_DESKTOP=Unity
wmname LG3D

# ─── Misc env ─────────────────────────────────────────────────────────────────
export WINEPREFIX="$XDG_DATA_HOME"/wine
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export MANPATH="/usr/local/man:$MANPATH"
export TERM=xterm-256color

typeset -aU path   # auto-deduplicate PATH

# ─── bemenu theme ─────────────────────────────────────────────────────────────
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

# ─── LF icons ─────────────────────────────────────────────────────────────────
LF_ICONS=$(sed ~/.config/lf/diricons \
            -e '/^[ \t]*#/d'         \
            -e '/^[ \t]*$/d'         \
            -e 's/[ \t]\+/=/g'       \
            -e 's/$/ /')
LF_ICONS=${LF_ICONS//$'\n'/:}
export LF_ICONS

# ─── Completions ──────────────────────────────────────────────────────────────
zstyle ':completion:*' hosts off
typeset -aU fpath
fpath=(/home/brown/.local/share/zsh-completion/completions $fpath)
fpath+=${ZDOTDIR:-~}/.zsh_functions

# ─── compinit (run once, Linux-compatible date check) ─────────────────────────
autoload -Uz compinit
_comp_files=(${ZDOTDIR:-$HOME}/.zcompdump(Nm-20))
if (( $#_comp_files )); then
  compinit -C  # skip security check, use cached dump
else
  compinit      # regenerate dump (only runs if dump is >20 days old or missing)
fi
unset _comp_files
#
for file in "$HOME/.config/zsh/completions"/*; do
  source "$file"
done

# ─── zoxide ───────────────────────────────────────────────────────────────────
# Pre-generate this file once with: zoxide init zsh > ~/.config/zsh/zoxide.zsh
[[ -f ~/.config/zsh/zoxide.zsh ]] && source ~/.config/zsh/zoxide.zsh

function j()  { __zoxide_z  "$@" }
function ji() { __zoxide_zi "$@" }

# ─── fnm ──────────────────────────────────────────────────────────────────────
# Pre-generate this file once with: fnm env --use-on-cd --shell zsh > ~/.config/zsh/fnm.zsh
[[ -f ~/.config/zsh/fnm.zsh ]] && source ~/.config/zsh/fnm.zsh

# ─── broot (lazy) ─────────────────────────────────────────────────────────────
function br() {
  local _broot_src="${HOME}/.config/broot/launcher/bash/br"
  if [[ -f "$_broot_src" ]]; then
    source "$_broot_src"
    unfunction br
    br "$@"
  else
    echo "broot launcher not found at $_broot_src"
  fi
}

# ─── gcloud (lazy) ────────────────────────────────────────────────────────────
function gcloud() {
  unfunction gcloud
  [[ -f '/home/brown/app/google-cloud-sdk/path.zsh.inc' ]] && source '/home/brown/app/google-cloud-sdk/path.zsh.inc'
  [[ -f '/home/brown/app/google-cloud-sdk/completion.zsh.inc' ]] && source '/home/brown/app/google-cloud-sdk/completion.zsh.inc'
  [[ -f '/opt/google-cloud-cli/completion.zsh.inc' ]] && source '/opt/google-cloud-cli/completion.zsh.inc'
  gcloud "$@"
}

# ─── Misc tools ───────────────────────────────────────────────────────────────
alias luamake="${HOME}/lua-language-server/3rd/luamake/luamake"
source ${HOME}/.aliases
source ${HOME}/.bash_functions

# ─── fzf ──────────────────────────────────────────────────────────────────────
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

# ─── sdkman (must be last) ────────────────────────────────────────────────────
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# ─── bun ──────────────────────────────────────────────────────────────────────
[[ -s "${HOME}/.bun/_bun" ]] && source "${HOME}/.bun/_bun"

# ─── tabtab ───────────────────────────────────────────────────────────────────
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && source ~/.config/tabtab/zsh/__tabtab.zsh

# ─── deno ─────────────────────────────────────────────────────────────────────
[[ -f "$HOME/.deno/env" ]] && source "$HOME/.deno/env"

# ─── Pulumi ───────────────────────────────────────────────────────────────────
export PATH="$PATH:$HOME/.pulumi/bin"

# ─── nvim (AppImage/standalone) ───────────────────────────────────────────────
export PATH="$PATH:/opt/nvim-linux64/bin"

# ─── p10k ─────────────────────────────────────────────────────────────────────
source "${HOME}/.config/zsh/${Z_THEME}"
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# ─── OSC7 (terminal working directory reporting) ──────────────────────────────
function osc7() {
  local LC_ALL=C
  export LC_ALL
  setopt localoptions extendedglob
  input=( ${(s::)PWD} )
  uri=${(j::)input/(#b)([^A-Za-z0-9_.\!~*\'\(\)-\/])/%${(l:2::0:)$(([##16]#match))}}
  print -n "\e]7;file://${HOSTNAME}${uri}\e\\"
}
add-zsh-hook -Uz chpwd osc7
. "$HOME/.vite-plus/env"

# bun completions
[ -s "/home/brown/.bun/_bun" ] && source "/home/brown/.bun/_bun"

# pnpm
export PNPM_HOME="/home/brown/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end
