#!/usr/bin/env bash

set -e


################################################################################
### Head: xfce
##

xfce_config_install () {

	echo
	echo "##"
	echo "## Config: xfce"
	echo "##"
	echo

	sys_xfconfd_stop

	xfce_config_install_by_dir

	##xfce_config_install_by_each_file


	echo

}

xfce_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}/.config/autostart"
	mkdir -p "${HOME}/.config/autostart"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/.config/autostart/. ${HOME}/.config/autostart"
	cp -rf "./asset/overlay/etc/skel/.config/autostart/." "${HOME}/.config/autostart"



}

xfce_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/autostart"
	mkdir -p "${HOME}/.config/autostart"


	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/autostart/plank-on-xfce.desktop ${HOME}/.config/autostart/plank-on-xfce.desktop"
	install -Dm644 "./asset/overlay/etc/skel/.config/autostart/plank-on-xfce.desktop" "${HOME}/.config/autostart/plank-on-xfce.desktop"


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
### Head: config_install
##

main_config_install () {

	xfce_config_install

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
