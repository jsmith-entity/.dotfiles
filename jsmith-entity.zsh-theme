autoload -Uz vcs_info

zstyle ':vcs_info:git:*' formats 'git::%b'

function has_unstaged_changes() {
    [[ -n $(git status --porcelain 2>/dev/null) ]]
}

precmd() {
  vcs_info
  if has_unstaged_changes; then
    unstaged_changes='*'
  else
    unstaged_changes=''
  fi
}

setopt prompt_subst

user='%{$fg[blue]%}[%n %1~] '
git='%{$fg[magenta]%}${vcs_info_msg_0_}'
git_changes='${unstaged_changes}'
reset='%{$reset_color%}$ '
PROMPT="${user}${git}${git_changes}${reset}"
LS_COLORS="di=01;94:ex=01;35"
