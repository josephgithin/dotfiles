
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Since we are using Starship, no Oh My Zsh theme is needed.
ZSH_THEME=""

# Enable Oh My Zsh plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Enable Zsh completion system
autoload -Uz compinit
compinit
compinit -u  # Avoid insecure directories warning

# Enable Zsh Autosuggestions (plugin manually installed)
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable Zsh Syntax Highlighting (plugin manually installed)
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Set up Starship prompt (replaces Oh My Zsh themes)
eval "$(starship init zsh)"

# Aliases and custom settings
alias ll="ls -lah"
alias gs="git status"
alias docker="podman"

# Docker environment variables (for Podman)
export DOCKER_HOST='unix:///run/user/1000/podman/podman-machine-default-api.sock'

# Set environment variables (optional)
# export PATH="$HOME/bin:/usr/local/bin:$PATH"

# Reload the terminal prompt after waking from sleep (if using sleep mode)
function update_terminal_cwd() {
  local p=$(print -Pn "\e]7;file://%m%~\a")
  [[ -n "$TMUX" ]] && tmux refresh-client -S
  echo -n "$p"
}

# Preferred editor for local and remote sessions (optional)
# export EDITOR='vim'

# Reload Zsh config
alias zshconfig="nano ~/.zshrc"
alias reload="source ~/.zshrc"
# User-specific aliases and functions (you can add more as needed)
alias vi="nvim"
alias vim="nvim"

