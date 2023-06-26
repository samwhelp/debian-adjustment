#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##

theme_asset_install () {

	echo
	echo
	echo
	echo
	echo "##"
	echo "## Asset: theme"
	echo "##"
	echo

	theme_gtk_gruvbox_asset_install


	echo

}



##
### Tail: theme
################################################################################


################################################################################
### Head: theme / gtk / gruvbox
##

theme_gtk_gruvbox_asset_install () {

	mkdir -p "${HOME}/.cache/manual-install/gtk-theme-gruvbox"

	wget -c "https://github.com/samwhelp/gruvbox-theme-collection/archive/refs/heads/gtk-theme-gruvbox.tar.gz" -O "${HOME}/.cache/manual-install/gtk-theme-gruvbox/gtk-theme-gruvbox.tar.gz"


	mkdir -p "${HOME}/.cache/manual-install/gtk-theme-gruvbox/src"


	tar xf "${HOME}/.cache/manual-install/gtk-theme-gruvbox/gtk-theme-gruvbox.tar.gz" -C "${HOME}/.cache/manual-install/gtk-theme-gruvbox/src"


	cp -rf "${HOME}/.cache/manual-install/gtk-theme-gruvbox/src/gruvbox-theme-collection-gtk-theme-gruvbox/." "${HOME}/.themes/Gruvbox"

}


##
### Tail: theme / gtk / gruvbox
################################################################################


################################################################################
### Head: asset_install
##

main_asset_install () {

	theme_asset_install

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
