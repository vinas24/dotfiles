eval "$(starship init zsh)"


#transient prompt
_starship_full_prompt=$PROMPT
_starship_transient_prompt='%F{5}❯%f '
_starship_restore_prompt() { PROMPT=$_starship_full_prompt }
precmd_functions+=(_starship_restore_prompt)
zle-line-finish() {
  PROMPT=$_starship_transient_prompt
  zle .reset-prompt
}
zle -N zle-line-finish

# highlighting del prompt
# highlighting del prompt
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'
FAST_HIGHLIGHT_STYLES[path]='underline'
FAST_HIGHLIGHT_STYLES[path-to-dir]='underline'
FAST_HIGHLIGHT_STYLES[globbing]='none'
