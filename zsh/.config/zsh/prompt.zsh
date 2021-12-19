_git_branch() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo " ${ref##*/}"
}

_conda_prompt() {
    [[ -z $CONDA_PREFIX ]] && return
    echo " ${CONDA_PREFIX##*/}"
}

setopt prompt_subst
PROMPT=' %K{black}%*%F{cyan}$(_conda_prompt)%F{magenta}$(_git_branch) %F{yellow}%1d%F{black}%k'$'\ue0b0''%F{white}'
RPROMPT='%K{black}%(?,%F{green}uwu,%F{red}ΦwΦ %?)%F{black}%k'$'\ue0b0''%F{white}'
