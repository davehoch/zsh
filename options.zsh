# Documentation for options
# https://zsh.sourceforge.io/Doc/Release/Options.html

setopt AUTO_PUSHD               # Make cd push the old directory onto the directory stack.
setopt NUMERIC_GLOB_SORT        # If numeric filenames are matched by a filename generation pattern, sort the filenames numerically rather than lexicographically.
# setopt NO_CASE_GLOB           # case insensitive globbing.  i.e D* will match d*


setopt HIST_IGNORE_ALL_DUPS     # do not put duplicated command into history list
setopt HIST_IGNORE_SPACE        # Remove command lines from the history list when the first character on the line is a space, or when one of the expanded aliases contains a leading space
setopt HIST_REDUCE_BLANKS       # removes blank lines from history
setopt HIST_SAVE_NO_DUPS        # do not save duplicated command

