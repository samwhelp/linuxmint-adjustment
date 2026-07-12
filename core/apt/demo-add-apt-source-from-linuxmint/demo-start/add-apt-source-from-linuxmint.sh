#!/usr/bin/env bash




##
## ## Module
##

function add_linuxmint_keyring () {

	#wget http://packages.linuxmint.com/pool/main/l/linuxmint-keyring/linuxmint-keyring_2022.06.21_all.deb -O /tmp/linuxmint-keyring_2022.06.21_all.deb > /dev/null 2>&1

	wget -c http://packages.linuxmint.com/pool/main/l/linuxmint-keyring/linuxmint-keyring_2022.06.21_all.deb -O /tmp/linuxmint-keyring_2022.06.21_all.deb

	echo sudo dpkg -i /tmp/linuxmint-keyring_2022.06.21_all.deb

	sudo dpkg -i /tmp/linuxmint-keyring_2022.06.21_all.deb

	rm -f /tmp/linuxmint-keyring_2022.06.21_all.deb

}

function add_linuxmint_apt_sources () {

	sudo mkdir -p "/etc/apt/sources.list.d"
cat << __EOF__ | sudo tee "/etc/apt/sources.list.d/linuxmint.sources" > /dev/null 2>&1
Types: deb
URIs: http://packages.linuxmint.com/
Suites: alfa
Components: main upstream import backport
Architectures: amd64
Signed-By: /etc/apt/trusted.gpg.d/linuxmint-keyring.gpg
__EOF__

}

function add_linuxmint_apt_preferences () {

cat << __EOF__ | sudo tee "/etc/apt/preferences.d/linuxmint.pref"  > /dev/null 2>&1
Package: *
Pin: origin live.linuxmint.com
Pin-Priority: 750

Package: *
Pin: release o=linuxmint,c=upstream
Pin-Priority: 700
__EOF__

}




##
## ## Main
##

add_linuxmint_keyring

add_linuxmint_apt_sources

add_linuxmint_apt_preferences
