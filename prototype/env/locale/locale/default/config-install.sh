#!/usr/bin/env bash

set -e


################################################################################
### Head: locale
##

locale_config_install () {

	echo
	echo
	echo
	echo
	echo "##"
	echo "## Config: locale"
	echo "##"
	echo


	#locale_config_install_by_dir

	locale_config_install_by_each_file

	#sys_locale_gen

	echo

}



locale_config_install_by_dir () {

	echo
	echo "sudo mkdir -p /etc/default"
	sudo mkdir -p "/etc/default"

	echo
	echo "sudo cp -rf ./asset/overlay/etc/. /etc"
	sudo cp -rf "./asset/overlay/etc/." "/etc"

}


locale_config_install_by_each_file () {

	echo
	echo "sudo mkdir -p /etc/default"
	sudo mkdir -p "/etc/default"

	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/default/locale /etc/default/locale"
	sudo install -Dm644 "./asset/overlay/etc/default/locale" "/etc/default/locale"

	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/locale.conf /etc/locale.conf"
	sudo install -Dm644 "./asset/overlay/etc/locale.conf" "/etc/locale.conf"

}


##
### Tail: locale
################################################################################


################################################################################
### Head: locale
##

sys_locale_gen () {

	echo
	echo "sudo locale-gen"
	echo
	sudo locale-gen

}



##
### Tail: locale
################################################################################




################################################################################
### Head: config_install
##

main_config_install () {

	locale_config_install

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
