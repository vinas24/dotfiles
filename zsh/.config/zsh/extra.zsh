export CLAUDE_CONFIG_DIR="$XDG_CONFIG_HOME"/claude
export GTK_IM_MODULE=simple
export PATH="$PATH:/home/vinas/.local/share/JetBrains/Toolbox/scripts"
. "$HOME/.local/bin/env"
[ -f "/home/vinas/.ghcup/env" ] && . "/home/vinas/.ghcup/env" # ghcup-env

# para llamar a yazi y que cambie de directorio
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# Esc dos veces activa sudo
sudo-command-line() {
  [[ -z $BUFFER ]] && zle up-history
  if [[ $BUFFER == sudo\ * ]]; then
    BUFFER="${BUFFER#sudo }"
  else
    BUFFER="sudo $BUFFER"
  fi
  CURSOR=${#BUFFER}
}
zle -N sudo-command-line
bindkey -M emacs '\e\e' sudo-command-line

#cosas de la uni
alias ucmVpn='env sudo OPENSSL_CONF=/usr/share/globalprotect-openconnect/openssl.cnf gpclient --fix-openssl connect --as-gateway galeria.ucm.es'
alias ssh-github='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_rsa'
alias ssh-hivebox='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/hivebox'

#directory zsh hashes
hash -d Uni=~/Documents/Uni/Tercero




