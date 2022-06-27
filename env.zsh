# Put gui applications in personal Applications folder.  It doesn't need sudo permission.
export HOMEBREW_CASK_OPTS="--appdir='$HOME/Applications' --require-sha"

# only upgrade the things I asked to upgrade, not all dependencies as well
export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=1

export BROWSER=open
export EDITOR=code

#fix for Docker problem:  https://github.com/docker/for-mac/issues/770
#export DOCKER_HOST=tcp://localhost:1234
