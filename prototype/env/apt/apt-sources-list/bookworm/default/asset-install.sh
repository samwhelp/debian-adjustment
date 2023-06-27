#!/usr/bin/env bash

set -e


################################################################################
### Head: apt
##

apt_asset_install () {

	echo
	echo
	echo
	echo
	echo "##"
	echo "## Asset: apt"
	echo "##"
	echo


	echo

}

##
### Tail: apt
################################################################################




################################################################################
### Head: asset_install
##

main_asset_install () {

	apt_asset_install

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
