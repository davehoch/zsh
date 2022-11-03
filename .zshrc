source ~/.config/zsh/env.zsh
source ~/.config/zsh/options.zsh
source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/history.zsh
source ~/.config/zsh/prompt.zsh

# This seems to mostly affect output from tools like maven
tabs -4

bindkey -s '^o' 'lfcd\n'  # ctrl-O

# Load zsh-syntax-highlighting; should be last.
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
