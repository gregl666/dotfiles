# Exports
###############################################################################

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# History
###############################################################################

HISTIGNORE="apps:appsh:bok:brews:casks:dl:dsstore:dt:kf:lib:libh:lk:not:o:restart:trash:vol:$HISTIGNORE"
export HISTIGNORE

# Navigation
###############################################################################

alias apps='c /Applications'
alias appsh='c ~/Applications'
alias bok='c /Volumes/g/books "$short_list_options"'
alias brews='c /usr/local/Cellar'
alias casks='c /opt/homebrew-cask/Caskroom'
alias dl='c ~/Downloads'
alias dt='c ~/Desktop'
alias lib='c /Library "$short_list_options"'
alias libh='c ~/Library'
alias thumb='c "$("$HOME/bin/thumb" "$PWD")"'
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias vol='c /Volumes'

# `o` with no arguments opens current directory
o() {
  if [ $# -eq 0 ]; then
    open .
  else
    open "$@"
  fi
}

# System
###############################################################################

# Quit finder
alias killfinder="osascript -e 'tell application \"Finder\" to quit'"
alias kf='killfinder'

# Lock the screen
alias lk='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

# Delete all screenshots from the desktop
alias screenshots='rm ~/Desktop/Screen\ Shot*'
