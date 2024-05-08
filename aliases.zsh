# aliases
# Do not put aliases to applications in here.  Use ln -s to make a link instead
# ln -s <source> /usr/local/bin/<target>
# ln -s "/Applications/NetBeans/Apache NetBeans 12.1.app/Contents/Resources/NetBeans/netbeans/bin/netbeans" /usr/local/bin/netbeans
alias cypress='./node_modules/cypress/bin/cypress open --env type=dev --config baseUrl=http://localhost:8080 &'
alias diff-pdf='diff-pdf --view --mark-differences'
alias lfcd='source lfcdscript' # this is required so that the cd command doesn't run in a subshell
alias ll='ls -lhFG'
alias lla='ls -alhFG'
alias ls='ls -FG'

alias tf='terraform'
alias ql='qlmanage -p "$@" > /dev/null'
alias vm='versionmanager'

# see zsh_local.zsh for more aliases
