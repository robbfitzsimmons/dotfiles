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

ruby_version() {
  if (( $+commands[rbenv] ))
  then
    echo "$(rbenv version | awk '{print $1}')"
  fi

  if (( $+commands[rvm-prompt] ))
  then
    echo "$(rvm-prompt | awk '{print $1}')"
  fi
}

rb_prompt() {
  if ! [[ -z "$(ruby_version)" ]]
  then
    echo "%{$fg_bold[red]%}rb-v$(ruby_version)%{$reset_color%} "
  else
    echo ""
  fi
}

python_version() {
  if ! (( $+commands[python --version] ))
  then
    echo "$(python --version | awk '{print $2}')"
  fi
}

py_prompt() {
  if ! [[ -z "$(python_version)" ]]
  then
    echo "%{$fg_bold[green]%}py-v$(python_version)%{$reset_color%} "
  else
    echo ""
  fi
}

node_version() {
  if (( $+commands[node] ))
  then
    echo "$(node --version | awk '{print $1}')"
  fi
}

node_prompt() {
  if ! [[ -z "$(node_version)" ]]
  then
    echo "%{$fg_bold[yellow]%}js-$(node_version)%{$reset_color%} "
  else
    echo ""
  fi
}

directory_name(){
  echo "%{$fg_bold[blue]%}%1/%\/%{$reset_color%}"
}

export PROMPT=$'> '
set_prompt () {
  export RPROMPT="$(rb_prompt)| $(py_prompt)| $(node_prompt)| $(directory_name) | $(git_dirty)$(need_push)"
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

# Geospatial-specific
export PATH="/usr/local/opt/gdal2/bin:$PATH" # override Postgres.app GDAL bin

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
