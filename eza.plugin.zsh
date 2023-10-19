if ! (( $+commands[eza] )); then
  print "eza-plugin: eza not found on path. Please install eza before using this plugin." >&2
  return 1
fi

alias ls='eza --group-directories-first --icons --color-scale'

# Show in tree view
alias lt='eza --tree --level=2 --icons'

# Short, all files
alias l='ls -a'
# Short, only directories
alias ld='l -D'

# Long, file size prefixes, git status
alias ll='ls -lbXH --git --group'
# Long, all files, . & ..
alias la='ll -a -a'

# Long, sort changed
alias lC='la --sort=changed'
# Long, sort modified
alias lM='la --sort=modified'
# Long, sort size
alias lS='la --sort=size'
# Long, sort extension
alias lX='la --sort=extension'
