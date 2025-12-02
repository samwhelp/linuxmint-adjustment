#!/usr/bin/env bash

set -e


################################################################################
### Head: xfce
##

xfce_config_run_pre () {

	xfce_service_stop


	return 0

}

xfce_config_run_post () {

	xfce_service_start


	return 0

}

xfce_service_stop () {

	xfce_service_stop_xfconfd

	#xfce_service_stop_xfsettingsd


	return 0

}

xfce_service_stop_xfconfd () {

	if killall -9 xfconfd; then
		return 0
	fi


	return 0

}

xfce_service_stop_xfsettingsd () {

	if killall -9 xfsettingsd; then
		return 0
	fi


	return 0

}

xfce_service_start () {


	return 0

}

##
### Tail: xfce
################################################################################


################################################################################
### Head: thunar
##

thunar_config_install () {

	echo
	echo "##"
	echo "## Config: thunar"
	echo "##"
	echo


	thunar_config_install_by_dir

	#thunar_config_install_by_each_file


	echo

}

thunar_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

thunar_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/thunar"
	mkdir -p "${HOME}/.config/thunar"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/thunar/thunar.conf ${HOME}/.config/thunar/thunar.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/thunar/thunar.conf" "${HOME}/.config/thunar/thunar.conf"


}

##
### Tail: thunar
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	xfce_config_run_pre

	thunar_config_install

	xfce_config_run_post

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
