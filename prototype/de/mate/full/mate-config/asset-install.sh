#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##

mate_asset_install () {

	echo
	echo
	echo
	echo
	echo "##"
	echo "## Asset: mate"
	echo "##"
	echo

	theme_asset_install


	echo

}



##
### Tail: mate
################################################################################


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

	theme_xfwm_rgaps_blend_nobuttons_asset_install


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
### Head: theme / xfwm / rgaps-blend-nobuttons
##

theme_xfwm_rgaps_blend_nobuttons_asset_install () {

	##
	## * [rgaps-blend-nobuttons](https://github.com/samwhelp/rgaps-theme-collection/tree/rgaps-blend-nobuttons)
	##

	mkdir -p "${HOME}/.cache/manual-install/rgaps-blend-nobuttons"

	wget -c "https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/rgaps-blend-nobuttons.tar.gz" -O "${HOME}/.cache/manual-install/rgaps-blend-nobuttons/rgaps-theme-collection-rgaps-blend-nobuttons.tar.gz"

	tar xf "${HOME}/.cache/manual-install/rgaps-blend-nobuttons/rgaps-theme-collection-rgaps-blend-nobuttons.tar.gz" -C "${HOME}/.cache/manual-install/rgaps-blend-nobuttons"

	mkdir -p "${HOME}/.themes/RGapsBlendNoButtons"

	cp -rf "${HOME}/.cache/manual-install/rgaps-blend-nobuttons/rgaps-theme-collection-rgaps-blend-nobuttons/." "${HOME}/.themes/RGapsBlendNoButtons"

}


##
### Tail: theme / xfwm / rgaps-blend-nobuttons
################################################################################




################################################################################
### Head: asset_install
##

main_asset_install () {

	mate_asset_install

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
