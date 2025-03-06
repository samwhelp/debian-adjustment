#!/usr/bin/env bash

set -e


################################################################################
### Head: compiz
##

compiz_config_install () {

	echo
	echo "##"
	echo "## Config: compiz"
	echo "##"
	echo


	compiz_config_install_by_dir

	#compiz_config_install_by_each_file


	echo

}

compiz_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

compiz_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/compiz"
	mkdir -p "${HOME}/.config/compiz"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/compiz/compiz.conf ${HOME}/.config/compiz/compiz.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/compiz/compiz.conf" "${HOME}/.config/compiz/compiz.conf"


}

##
### Tail: compiz
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	compiz_config_install

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
