# Put gui applications in personal Applications folder.  It doesn't need sudo permission.
export HOMEBREW_CASK_OPTS="--appdir='$HOME/Applications' --require-sha"

# only upgrade the things I asked to upgrade, not all dependencies as well
export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=1

export BROWSER=open
export EDITOR=code

#fix for Docker problem:  https://github.com/docker/for-mac/issues/770
#export DOCKER_HOST=tcp://localhost:1234

# less syntax highlighting + source-highlight installation
# -R Repaint the screen, discarding any buffered input.  Not sure why this is needed with the source-highlighting.
# -x4 sets tabs to 4 spaces
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R -x4'