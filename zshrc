export ZSH="/Users/vu.duc.tuyen/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
source $HOME/.nvm/nvm.sh

# emulate bash PROMPT_COMMAND (only for zsh)
precmd() { eval "$PROMPT_COMMAND" }

# open new terminal in same dir
PROMPT_COMMAND='pwd > ~/.cwd'
[[ -f ~/.cwd ]] && cd $(cat ~/.cwd)

# create env variable
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export ANDROID_HOME="/Users/vu.duc.tuyen/Library/Android/sdk"
export PATH="${ANDROID_HOME}/tools:${PATH}"
export PATH="${ANDROID_HOME}/emulator:${PATH}"
export PATH="${ANDROID_HOME}/platform-tools:${PATH}"
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

