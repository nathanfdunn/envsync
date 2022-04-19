ROOT="$ZDOTDIR"
LOCAL="$ROOT/local"

export ZSH="$ROOT/ohmyzsh"
ZSH_THEME="chess-muse"

source "$ROOT/ohmyzsh/oh-my-zsh.sh"

# for creating variables
source "$ROOT/env"
source "$LOCAL/env"

# for configuring PATH
source "$ROOT/path"
source "$LOCAL/path"

# for creating aliases
source "$ROOT/aliases"
source "$LOCAL/aliases"

# for creating functions
source "$ROOT/functions"
source "$LOCAL/functions"

# for configuring shell options
source "$ROOT/opts"
source "$LOCAL/opts"

# for quick gotos
source "$ROOT/gotos"
source "$LOCAL/gotos"

# Random completions
source $COMMANDDIR/_list_options
