# Put gui applications in personal Applications folder.  It doesn't need sudo permission.
export HOMEBREW_CASK_OPTS="--appdir='$HOME/Applications' --require-sha"

# only upgrade the things I asked to upgrade, not all dependencies as well
export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=1

export BROWSER=open
export EDITOR=code

#fix for Docker problem:  https://github.com/docker/for-mac/issues/770
#export DOCKER_HOST=tcp://localhost:1234

# less syntax highlighting + source-highlight installation
# https://www.gnu.org/software/src-highlite/
# This also looks promising: http://www.andre-simon.de/doku/highlight/en/highlight.php
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=' --RAW-CONTROL-CHARS --tabs=4'