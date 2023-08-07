

################################################################################
##
## ~/.profile
##
################################################################################




################################################################################
### Head: note
##

##
## ~/.profile: executed by the command interpreter for login shells.
## This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
## exists.
## see /usr/share/doc/bash/examples/startup-files for examples.
## the files are located in the bash-doc package.
##

##
### Tail: note
################################################################################




################################################################################
### Head: debian profile
##

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
	# include .bashrc if it exists
	if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
	fi
fi

## set PATH so it includes user's private bin if it exists
#if [ -d "$HOME/bin" ] ; then
#	PATH="$HOME/bin:$PATH"
#fi

## set PATH so it includes user's private bin if it exists
#if [ -d "$HOME/.local/bin" ] ; then
#	PATH="$HOME/.local/bin:$PATH"
#fi


##
### Tail: debian profile
################################################################################




################################################################################
### Head: Path
##

##
## Aad [~/bin] and [~/.local/bin] to PATH
##

#PATH="${HOME}/.local/bin:${HOME}/bin:${PATH}"

[ -f ~/.path ] && . ~/.path

##
### Tail: Path
################################################################################
