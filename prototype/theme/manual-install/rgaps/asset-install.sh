#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##

theme_asset_install () {

	echo
	echo
	echo
	echo
	echo "##"
	echo "## Asset: theme"
	echo "##"
	echo

	theme_xfwm_rgaps_all_asset_install


	echo

}



##
### Tail: theme
################################################################################


################################################################################
### Head: theme / xfwm / rgaps-all
##

theme_xfwm_rgaps_all_asset_install () {

	##
	## * [rgaps-all](https://github.com/samwhelp/rgaps-theme-collection/tree/rgaps-all)
	##

	mkdir -p "${HOME}/.cache/manual-install/rgaps-all"

	wget -c "https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/all.tar.gz" -O "${HOME}/.cache/manual-install/rgaps-all/rgaps-theme-collection-all.tar.gz"

	tar xf "${HOME}/.cache/manual-install/rgaps-all/rgaps-theme-collection-all.tar.gz" -C "${HOME}/.cache/manual-install/rgaps-all"

	mkdir -p "${HOME}/.themes"

	cp -rf "${HOME}/.cache/manual-install/rgaps-all/rgaps-theme-collection-all/collection/xfwm-theme/themes/." "${HOME}/.themes"

}


##
### Tail: theme / xfwm / rgaps-all
################################################################################



################################################################################
### Head: asset_install
##

main_asset_install () {

	theme_asset_install

}

##
### Tail: asset_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_asset_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
