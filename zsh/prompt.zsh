autoload colors && colors

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  st=$($git status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]
  then
    echo ""
  else
    if [[ "$st" =~ ^nothing ]]
    then
      echo "%{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo "%{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

unpushed () {
  $git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " with %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}

python_version() {
  if ! (( $+commands[python --version] ))
  then
    echo "$(python --version | awk '{print $2}')"
  fi
}

py_prompt() {
  if [[ -n "${VIRTUAL_ENV+1}" ]]; then
    # Strip out the path and just leave the env name
    venv="${VIRTUAL_ENV##*/}"
    echo "%{$fg_bold[green]%}py $venv%{$reset_color%} "
  elif ! [[ -z "$(python_version)" ]]; then
    echo "%{$fg_bold[green]%}py $(python_version)%{$reset_color%} "
  else
    echo ""
  fi
}

r_version(){
  if ! (( $+commands[R --version] ))
  then
    echo "$(R --version | awk 'NR== 1{print $3}')"
  fi
}

r_prompt(){
  if ! [[ -z "$(r_version)" ]]
  then
    echo "%{$fg_bold[yellow]%}R $(r_version)%{$reset_color%} "
  else
    echo ""
  fi
}

directory_name(){
  echo "%{$fg_bold[blue]%}%1/%\/%{$reset_color%}"
}

export PROMPT=$'> '
set_prompt () {
  export RPROMPT="$(py_prompt)| $(r_prompt)| $(directory_name) | $(git_dirty)$(need_push)"
}

precmd() {
  set_prompt
}

## Setting PATH
export PATH="$HOME/.bin:$PATH"

# Brew-installed packages added to PATH
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH" # Bins needing sudo

# Ruby / rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - --no-rehash zsh)"

# Python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Node / nvm
export PATH="$PATH:/usr/local/lib/node_modules"
source $(brew --prefix nvm)/nvm.sh

# PostgreSQL bins
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

## some nice Zsh options
# nicer command history
setopt share_history

# can just type name of directory to change to it, no "cd" needed. e.g. "~"
setopt auto_cd

# more extensive tab completion
autoload -U compinit
compinit

# case insensitive tab completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# superglobs
setopt extendedglob
unsetopt caseglob
