#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##

theme_config_install () {

	echo
	echo
	echo
	echo
	echo "##"
	echo "## Config: theme"
	echo "##"
	echo

	echo "Do Nothing!"


	echo

}

##
### Tail: theme
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	theme_config_install

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
