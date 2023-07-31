#!/usr/bin/env bash

set -e


################################################################################
### Head: xfce
##

xfce_asset_install () {

	echo
	echo
	echo
	echo
	echo "##"
	echo "## Asset: xfce"
	echo "##"
	echo

	sys_xfconfd_stop


	echo

}



##
### Tail: xfce
################################################################################


################################################################################
### Head: xfconfd
##

sys_xfconfd_stop () {

	if killall -9 xfconfd; then
		return 0
	fi

	return 0

}

##
### Tail: xfconfd
################################################################################


################################################################################
### Head: gsettings
##

gsettings_asset_install () {

	echo
	echo
	echo
	echo
	echo "##"
	echo "## asset: gsettings"
	echo "##"
	echo

	gsettings_asset_install_glib_compile_schemas

	echo

}


gsettings_asset_install_glib_compile_schemas () {

	echo
	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

}

##
### Tail: gsettings
################################################################################



################################################################################
### Head: asset_install
##

main_asset_install () {

	xfce_asset_install

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
