#!/usr/bin/env bash

set -e


################################################################################
### Head: locales
##

locales_config_install () {

	echo
	echo
	echo
	echo
	echo "##"
	echo "## Config: locales"
	echo "##"
	echo


	#locales_config_install_by_dir

	locales_config_install_by_each_file

	sys_locale_gen

	echo

}



locales_config_install_by_dir () {

	echo
	echo "sudo mkdir -p /etc"
	sudo mkdir -p "/etc"

	echo
	echo "sudo cp -rf ./asset/overlay/etc/. /etc"
	sudo cp -rf "./asset/overlay/etc/." "/etc"

}


locales_config_install_by_each_file () {

	echo
	echo "sudo mkdir -p /etc"
	sudo mkdir -p "/etc"

	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/locale.gen /etc/locale.gen"
	sudo install -Dm644 "./asset/overlay/etc/locale.gen" "/etc/locale.gen"

}


##
### Tail: locales
################################################################################


################################################################################
### Head: locales
##

sys_locale_gen () {

	echo
	echo "sudo locale-gen"
	echo
	sudo locale-gen

}



##
### Tail: locales
################################################################################




################################################################################
### Head: config_install
##

main_config_install () {

	locales_config_install

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
