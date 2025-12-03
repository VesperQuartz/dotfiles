export PATH="/run/user/1000/fnm_multishells/3471245_1780417868112/bin":$PATH
export FNM_MULTISHELL_PATH="/run/user/1000/fnm_multishells/3471245_1780417868112"
export FNM_VERSION_FILE_STRATEGY="local"
export FNM_DIR="/home/brown/.local/share/fnm"
export FNM_LOGLEVEL="info"
export FNM_NODE_DIST_MIRROR="https://nodejs.org/dist"
export FNM_COREPACK_ENABLED="false"
export FNM_RESOLVE_ENGINES="true"
export FNM_ARCH="x64"
autoload -U add-zsh-hook
_fnm_autoload_hook () {
    if [[ -f .node-version || -f .nvmrc || -f package.json ]]; then
    fnm use --silent-if-unchanged
fi

}

add-zsh-hook -D chpwd _fnm_autoload_hook
add-zsh-hook chpwd _fnm_autoload_hook

rehash
