#!/usr/bin/env bash

set -e


################################################################################
### Head: apt
##

apt_config_install () {

	echo
	echo
	echo
	echo
	echo "##"
	echo "## Config: apt"
	echo "##"
	echo


	#apt_config_install_by_dir

	apt_config_install_by_each_file

	sys_apt_get_update

	echo

}



apt_config_install_by_dir () {

	echo
	echo "sudo mkdir -p /etc/apt"
	sudo mkdir -p "/etc/apt"

	echo
	echo "sudo cp -rf ./asset/overlay/etc/apt/. /etc/apt"
	sudo cp -rf "./asset/overlay/etc/apt/." "/etc/apt"

}


apt_config_install_by_each_file () {

	echo
	echo "sudo mkdir -p /etc/apt"
	sudo mkdir -p "/etc/apt"

	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/apt/sources.list /etc/apt/sources.list"
	sudo install -Dm644 "./asset/overlay/etc/apt/sources.list" "/etc/apt/sources.list"

}


##
### Tail: apt
################################################################################


################################################################################
### Head: apt
##

sys_apt_get_update () {

	echo
	echo "sudo apt-get update"
	echo
	sudo apt-get update

}



##
### Tail: apt
################################################################################




################################################################################
### Head: config_install
##

main_config_install () {

	apt_config_install

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
