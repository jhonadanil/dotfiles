plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
)


# ============================
#   PROMPT PERSONALIZADO AVIT
# ============================

PROMPT='%F{green}%~%f
▶ '

# Espacio entre comandos
precmd() {
  print ""
}

# ============================
#   HISTORIAL AVANZADO
# ============================

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt append_history
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space

# ============================
#   AUTOCOMPLETADO PRO
# ============================

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# ============================
#   ICONOS (LSD)
# ============================

alias ls="lsd"
alias ll="lsd -l"
alias la="lsd -a"
alias lla="lsd -la"

# ============================
#   ALIAS ÚTILES
# ============================

alias lg="lazygit"

# ============================
#   CALIDAD DE VIDA
# ============================

setopt PROMPT_SUBST
setopt AUTO_CD
setopt CORRECT
setopt COMPLETE_IN_WORD

