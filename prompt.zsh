# stolen from https://github.com/joshdick/dotfiles/blob/main/zshrc.symlink
# Echoes information about Git repository status when inside a Git repository
git_info() {

  # Exit if not inside a Git repository
  ! git rev-parse --is-inside-work-tree > /dev/null 2>&1 && return

  # Git branch/tag, or name-rev if on detached head
  local GIT_LOCATION=${$(git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD)#(refs/heads/|tags/)}

  local AHEAD="%{$fg[red]%}⇡NUM%{$reset_color%}"
  local BEHIND="%{$fg[cyan]%}⇣NUM%{$reset_color%}"
  local MERGING="%{$fg[magenta]%}⚡︎%{$reset_color%}"
  local UNTRACKED="%{$fg[red]%}●%{$reset_color%}"
  local MODIFIED="%{$fg[yellow]%}●%{$reset_color%}"
  local STAGED="%{$fg[green]%}●%{$reset_color%}"
  local ALRIGHT="👍"

  local -a DIVERGENCES

  local NUM_AHEAD="$(git log --oneline @{u}.. 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_AHEAD" -gt 0 ]; then
    DIVERGENCES+=( "${AHEAD//NUM/$NUM_AHEAD}" )
  fi

  local NUM_BEHIND="$(git log --oneline ..@{u} 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_BEHIND" -gt 0 ]; then
    DIVERGENCES+=( "${BEHIND//NUM/$NUM_BEHIND}" )
  fi
  
  local -a FLAGS

  local GIT_DIR="$(git rev-parse --git-dir 2> /dev/null)"
  if [ -n $GIT_DIR ] && test -r $GIT_DIR/MERGE_HEAD; then
    FLAGS+=( "$MERGING" )
  fi

  if [[ -n $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
    FLAGS+=( "$UNTRACKED" )
  fi

  if ! git diff --quiet 2> /dev/null; then
    FLAGS+=( "$MODIFIED" )
  fi

  if ! git diff --cached --quiet 2> /dev/null; then
    FLAGS+=( "$STAGED" )
  fi

  local -a GIT_INFO
  [[ ${#DIVERGENCES[@]} -ne 0 ]] && GIT_INFO+=( "%{$fg[cyan]%}${(j::)DIVERGENCES}" )
  [[ ${#FLAGS[@]} -ne 0 ]] && GIT_INFO+=( "%{$fg[cyan]%}${(j::)FLAGS}" )
  [[ ${#DIVERGENCES[@]} -eq 0 ]] && [[ ${#FLAGS[@]} -eq 0 ]] && GIT_INFO+=( $ALRIGHT )
  GIT_INFO+=( "%{$fg[blue]%}$GIT_LOCATION%{$reset_color%}" )

  echo "(${(j: :)GIT_INFO})"
}

# PROMPT
setopt PROMPT_SUBST
PROMPT_CHAR=$'⚡'
# local PROMPT_CHAR=$'⮕ '
# local PROMPT_CHAR=$'👉'
PROMPT='%F{059}$USER@%m%f %F{029}%~%f $(git_info)
%F{059}${PROMPT_CHAR}%f'

# ZSH_DISABLE_COMPFIX="true"  #This doesn't seem to work
# commenting this out for now because this is annoying: Ignore insecure directories and continue [y] or abort compinit [n]?
autoload -Uz compinit && compinit
autoload -U colors && colors # Enable colors in prompt