#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##

mate_config_install () {

	echo
	echo
	echo
	echo
	echo "##"
	echo "## Config: mate"
	echo "##"
	echo

	sys_xfconfd_stop

	mate_config_install_overlay_home

	mate_config_install_overlay_root

	dconf_config_install

	gsettings_config_install


	echo

}

mate_config_install_overlay_home () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"



}


mate_config_install_overlay_root () {


	echo
	echo "sudo cp -rf ./asset/overlay/. /"
	sudo cp -rf "./asset/overlay/." "/"


}


##
### Tail: mate
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
### Head: dconf
##

dconf_config_install () {

	echo
	echo
	echo
	echo
	echo "##"
	echo "## Config: dconf"
	echo "##"
	echo

	dconf_config_install_prepare_db_dir
	dconf_config_install_profile
	dconf_config_install_update_db

	echo

}

dconf_config_install_prepare_db_dir () {

	echo
	echo "sudo mkdir -p /etc/dconf/db/local.d"
	sudo mkdir -p "/etc/dconf/db/local.d"

	echo
	echo "sudo mkdir -p /etc/dconf/db/site.d"
	sudo mkdir -p "/etc/dconf/db/site.d"

	echo
	echo "sudo mkdir -p /etc/dconf/db/distro.d"
	sudo mkdir -p "/etc/dconf/db/distro.d"

}

dconf_config_install_profile () {

	echo
	echo "sudo mkdir -p /etc/dconf/profile"
	sudo mkdir -p "/etc/dconf/profile"

	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/dconf/profile/user /etc/dconf/profile/user"
	sudo install -Dm644 "./asset/overlay/etc/dconf/profile/user" "/etc/dconf/profile/user"

}

dconf_config_install_update_db () {

	echo
	echo "sudo dconf update"
	sudo dconf update

	echo
	echo "file /etc/dconf/db/local"
	file "/etc/dconf/db/local"

	echo
	echo "file /etc/dconf/db/site"
	file "/etc/dconf/db/site"

	echo
	echo "file /etc/dconf/db/distro"
	file "/etc/dconf/db/distro"

}

##
### Tail: dconf
################################################################################


################################################################################
### Head: gsettings
##

gsettings_config_install () {

	echo
	echo
	echo
	echo
	echo "##"
	echo "## Config: gsettings"
	echo "##"
	echo

	gsettings_config_install_glib_compile_schemas

	echo

}


gsettings_config_install_glib_compile_schemas () {

	echo
	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

}

##
### Tail: gsettings
################################################################################



################################################################################
### Head: config_install
##

main_config_install () {

	mate_config_install

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
