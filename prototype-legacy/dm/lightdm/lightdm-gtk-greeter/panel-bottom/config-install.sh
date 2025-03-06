#!/usr/bin/env bash

set -e


################################################################################
### Head: lightdm
##

lightdm_config_install () {

	echo
	echo
	echo
	echo
	echo "##"
	echo "## Config: lightdm"
	echo "##"
	echo


	#lightdm_config_install_by_dir

	lightdm_config_install_by_each_file

	echo

}



lightdm_config_install_by_dir () {

	echo
	echo "sudo mkdir -p /etc/lightdm"
	sudo mkdir -p "/etc/lightdm"

	echo
	echo "sudo cp -rf ./asset/overlay/etc/lightdm/. /etc/lightdm"
	sudo cp -rf "./asset/overlay/etc/lightdm/." "/etc/lightdm"

}


lightdm_config_install_by_each_file () {

	echo
	echo "sudo mkdir -p /etc/lightdm/lightdm-gtk-greeter.conf.d"
	sudo mkdir -p "/etc/lightdm/lightdm-gtk-greeter.conf.d"

	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf.d/50_basic.conf /etc/lightdm/lightdm-gtk-greeter.conf.d/50_basic.conf"
	sudo install -Dm644 "./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf.d/50_basic.conf" "/etc/lightdm/lightdm-gtk-greeter.conf.d/50_basic.conf"

	return 0

	echo
	echo "sudo mkdir -p /etc/lightdm/lightdm.conf.d"
	sudo mkdir -p "/etc/lightdm/lightdm.conf.d"

	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/lightdm/lightdm.conf.d/50_basic.conf /etc/lightdm/lightdm.conf.d/50_basic.conf"
	sudo install -Dm644 "./asset/overlay/etc/lightdm/lightdm.conf.d/50_basic.conf" "/etc/lightdm/lightdm.conf.d/50_basic.conf"

}


##
### Tail: lightdm
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	lightdm_config_install

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
