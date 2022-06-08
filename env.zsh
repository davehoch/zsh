# Put gui applications in personal Applications folder.  It doesn't need sudo permission.
export HOMEBREW_CASK_OPTS="--appdir='$HOME/Applications' --require-sha"

export BROWSER=open
export EDITOR=code

#fix for Docker problem:  https://github.com/docker/for-mac/issues/770
#export DOCKER_HOST=tcp://localhost:1234
