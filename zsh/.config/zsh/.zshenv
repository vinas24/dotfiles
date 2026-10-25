export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export PATH=/usr/bin:$PATH

export EDITOR="nvim"
export VISUAL="nvim"

export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=${XDG_RUNTIME_DIR}/ssh-agent.socket

if command -v bat >/dev/null 2>&1; then
	export MANPAGER="bat -l man -p"
fi

export STARSHIP_CONFIG="$ZDOTDIR/starship.toml"
