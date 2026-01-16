export LANG=en_US.UTF-8
export LC_COLLATE=en_US.UTF-8
export CTYPE=en_US.UTF-8
export MESSAGE=en_US.UTF-8
export MONETARY=en_US.UTF-8
export NUMERIC=en_US.UTF-8
export TIME=en_US.UTF-8
export ALL=en_US.UTF-8
export SCRIPTS="$HOME/.local/bin/scripts"
export LESS_TERMCAP_mb=$'\E[01;31m'     # bold, red
export LESS_TERMCAP_md=$'\E[01;38;5;74m' # bold, blue
export LESS_TERMCAP_me=$'\E[0m'         # reset to default
export LESS_TERMCAP_se=$'\E[0m'         # reset to default
export LESS_TERMCAP_so=$'\E[01;37;41m'
export LESS_TERMCAP_ue=$'\E[0m'         # reset to default
export LESS_TERMCAP_us=$'\E[01;32m'     # bold, green
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
if [ "$XDG_SESSION_DESKTOP" = "sway" ] ; then
    # https://github.com/swaywm/sway/issues/595
    export _JAVA_AWT_WM_NONREPARENTING=1
fi
export STUDIO_JDK=/usr/lib/jvm/java-21-openjdk/
export AWT_TOOLKIT=MToolkit
. "/home/brown/.local/share/cargo/env"
export QT_SCALE_FACTOR=1.5
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export GROFF_NO_SGR=1         # For Konsole and Gnome-terminalexport XDG_CACHE_HOME=/home/brown/.cache/
export YARN_BIN=/home/brown/.local/share/npm/bin
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_CURRENT_DESKTOP=sway
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_PICTURES_DIR=/home/brown/Pictures/
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}
. "/home/brown/.local/share/cargo/env"
PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
export ANDROID_HOME=${HOME}/Android/Sdk
export ANDROID_AVD_HOME=/home/brown/.var/app/com.google.AndroidStudio/config/.android/avd
export ANDROID_EMULATOR_HOME=/home/brown/Android/Sdk/emulator
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export ANDROID_SDK_ROOT=${HOME}/Android/Sdk
export ANDROID_PREFS_ROOT=/home/brown/Android/Sdk
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export EDITOR=$VISUAL
export ELINKS_CONFDIR="$XDG_CONFIG_HOME"/elinks
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!git/"'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export GEM=/home/brown/.local/share/gem/ruby/3.0.0/bin
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GO=/home/brown/go/bin
export GOPATH="$XDG_DATA_HOME/go"
export GRIM_DEFAULT_DIR=/home/brown/Pictures/Screenshots/
export GROOVY_BIN=/home/brown/groovy/bin
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export GTK_USE_PORTAL=0
export HTML=/var/www/html
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export IPYTHONDIR="${XDG_CONFIG_HOME}/ipython"
export JAVA_HOME=/usr/lib/jvm/java-25-openjdk
export JAVA_JDK=/usr/lib/jvm/java-25-openjdk/bin
export JAVA_BIN=/usr/lib/jvm/java-25-openjdk/bin
export IDEA_JDK=/usr/lib/jvm/java-25-openjdk
export CHROME_EXECUTABLE=google-chrome-stable
export JDTLS_HOME=/home/brown/eclipse.jdt.ls
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export KITTY_DISABLE_WAYLAND=1
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;33m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;45;01m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export LOCAL_BIN=/home/brown/.local/bin
export LTEX=/home/brown/ltex-ls/bin
export MSFDB=/usr/share/metasploit-framework/config/database.yml
export MVN_BIN=/home/brown/Maven/bin
export MVN_HOME=/home/brown/Maven
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history
export NMAP_SCRIPT=/usr/share/nmap/scripts
export NODE=/home/brown/node/bin
export NODE_OPTIONS="--max-old-space-size=8192"
export ADB_TRACE=0
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export HISTSIZE=1000000000
export SAVEHIST=1000000000
export P4MERGE=/home/brown/p4v/bin
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export PKG_CONFIG_PATH
export PYENV_ROOT="$XDG_DATA_HOME"/pyenv
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc"
export ROBO_3T=/home/brown/robo3t/bin
export SASS=/home/brown/dart-sass
export SCALA_BIN=/home/brown/sbt/bin
export FLYIO_BIN=/home/brown/.fly/bin
export STUDIO_HOME=/home/brown/AStudio/bin
export STUDIO_JDK=/usr/lib/jvm/java-25-openjdk
export TOMCAT=/home/brown/ApacheTomCat/bin
export VISUAL=nvim
export VSCodium=/home/VSCodium/bin
export WINEPREFIX="$XDG_DATA_HOME"/wine
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export ZDOTDIR="$HOME"/.config/zsh
export ZSH="/home/brown/.oh-my-zsh"
export AWT_TOOLKIT=MToolkit
# export JDK_JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export PATH=$HOME/bin:/usr/local/bin:$PATH
export QT5=/usr/local/qt5/bin
export QT_SCALE_FACTOR=1.2
export QT_QPA_PLATFORM="wayland;xcb"
export IOTA="$HOME/.local/bin/iota"
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORMTHEME="qt6ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export PATH="$PATH:$HOME/flutter/bin"
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$PATH
export PATH="/opt/clang-format-static:$GROOVY_BIN:$GOPATH/bin:$GEM:$GRADLE_BIN:$FLYIO_BIN:$LTEX:$TOMCAT:$P4MERGE:$NODE:$MVN_BIN:$LOCAL_BIN:$STUDIO_HOME:$SCALA_BIN:$ROBO_3T:$YARN_BIN:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export RANGER_LOAD_DEFAULT_RC=false
export PATH="$PATH":"$HOME/.pub-cache/bin"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$IOTA:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/home/brown/.bun/bin:$PATH"
export ZELLIJ_AUTO_ATTACH="true"
export DOCKER_BUILDKIT=1
export XDG_CACHE_HOME=$HOME/.cache
export DPRINT=/home/brown/.dprint/bin/
export PATH="/home/brown/.local/share/solana/install/active_release/bin:$SCRIPTS:$DPRINT:$HOME/.amplify/bin:$PATH"
export TERM=xterm-ghostty
export PATH=$PATH:/home/brown/.pulumi/bin:/home/brown/.daml/bin
export BROWSER=zen-browser
export MANPAGER='nvim +Man!'
export UV_THREADPOOL_SIZE=12
export CLOUDSDK_PYTHON=/usr/bin/python
export ENCORE_INSTALL="/home/brown/.encore"
export PATH="$ENCORE_INSTALL/bin:$PATH"

# opencode
export PATH=/home/brown/.opencode/bin:$PATH
export GOOGLE_CLOUD_PROJECT="hono-462413"
export GOOGLE_CLOUD_LOCATION="us-central1"
