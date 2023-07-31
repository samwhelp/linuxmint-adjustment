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

	theme_gtk_gruvbox_asset_install

	theme_icon_gruvbox_dark_asset_install

	theme_gtk_gruvbox_dark_asset_install


	echo

}



##
### Tail: theme
################################################################################


################################################################################
### Head: theme / gtk / gruvbox
##

theme_gtk_gruvbox_asset_install () {

	##
	## * [gtk-theme-gruvbox](https://github.com/samwhelp/gruvbox-theme-collection/tree/gtk-theme-gruvbox)
	##

	mkdir -p "${HOME}/.cache/manual-install/gtk-theme-gruvbox"

	wget -c "https://github.com/samwhelp/gruvbox-theme-collection/archive/refs/heads/gtk-theme-gruvbox.tar.gz" -O "${HOME}/.cache/manual-install/gtk-theme-gruvbox/gruvbox-theme-collection-gtk-theme-gruvbox.tar.gz"

	tar xf "${HOME}/.cache/manual-install/gtk-theme-gruvbox/gruvbox-theme-collection-gtk-theme-gruvbox.tar.gz" -C "${HOME}/.cache/manual-install/gtk-theme-gruvbox"

	mkdir -p "${HOME}/.themes/Gruvbox"

	cp -rf "${HOME}/.cache/manual-install/gtk-theme-gruvbox/gruvbox-theme-collection-gtk-theme-gruvbox/." "${HOME}/.themes/Gruvbox"

}


##
### Tail: theme / gtk / gruvbox
################################################################################


################################################################################
### Head: theme / icon / gruvbox
##

theme_icon_gruvbox_dark_asset_install () {

	##
	## * [gtk-theme-gruvbox](https://github.com/samwhelp/gruvbox-theme-collection/tree/icon-theme-gruvbox-dark)
	##

	mkdir -p "${HOME}/.cache/manual-install/icon-theme-gruvbox-dark"

	wget -c "https://github.com/samwhelp/gruvbox-theme-collection/archive/refs/heads/icon-theme-gruvbox-dark.tar.gz" -O "${HOME}/.cache/manual-install/icon-theme-gruvbox-dark/gruvbox-theme-collection-icon-theme-gruvbox-dark.tar.gz"

	tar xf "${HOME}/.cache/manual-install/icon-theme-gruvbox-dark/gruvbox-theme-collection-icon-theme-gruvbox-dark.tar.gz" -C "${HOME}/.cache/manual-install/icon-theme-gruvbox-dark"

	mkdir -p "${HOME}/.icons/Gruvbox-Dark"

	cp -rf "${HOME}/.cache/manual-install/icon-theme-gruvbox-dark/gruvbox-theme-collection-icon-theme-gruvbox-dark/." "${HOME}/.icons/Gruvbox-Dark"

	#update-icon-caches "${HOME}/.icons/Gruvbox-Dark"
	gtk-update-icon-cache "${HOME}/.icons/Gruvbox-Dark"


}


##
### Tail: theme / icon / gruvbox-dark
################################################################################


################################################################################
### Head: theme / gtk / gruvbox-dark
##

theme_gtk_gruvbox_dark_asset_install () {

	##
	## * [gtk-theme-gruvbox-dark](https://github.com/samwhelp/gruvbox-theme-collection/tree/gtk-theme-gruvbox-dark)
	##

	mkdir -p "${HOME}/.cache/manual-install/gtk-theme-gruvbox-dark"

	wget -c "https://github.com/samwhelp/gruvbox-theme-collection/archive/refs/heads/gtk-theme-gruvbox-dark.tar.gz" -O "${HOME}/.cache/manual-install/gtk-theme-gruvbox-dark/gruvbox-theme-collection-gtk-theme-gruvbox-dark.tar.gz"

	tar xf "${HOME}/.cache/manual-install/gtk-theme-gruvbox-dark/gruvbox-theme-collection-gtk-theme-gruvbox-dark.tar.gz" -C "${HOME}/.cache/manual-install/gtk-theme-gruvbox-dark"

	mkdir -p "${HOME}/.themes/Gruvbox-Dark"

	cp -rf "${HOME}/.cache/manual-install/gtk-theme-gruvbox-dark/gruvbox-theme-collection-gtk-theme-gruvbox-dark/." "${HOME}/.themes/Gruvbox-Dark"

}


##
### Tail: theme / gtk / gruvbox-dark
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
