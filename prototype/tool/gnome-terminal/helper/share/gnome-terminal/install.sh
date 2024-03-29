#!/usr/bin/env bash

set -e


################################################################################
### Head: package_install
##

gnome_terminal_package_install () {

	echo

	echo "################################################################################"
	echo "### Head: gnome_terminal_package_install"
	echo "##"
	echo

	sudo apt-get install gnome-terminal

	echo
	echo "##"
	echo "### Tail: gnome_terminal_package_install"
	echo "################################################################################"
	echo

}

##
### Tail: package_install
################################################################################


################################################################################
### Head: config_install
##

gnome_terminal_config_install () {

	echo
	echo "################################################################################"
	echo "### Head: gnome_terminal_config_install"
	echo "##"
	echo


	echo
	echo "gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false"
	gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false


	echo
	echo

	## https://wiki.gnome.org/Apps/Terminal/FAQ
	## $ dpkg -L gnome-terminal | grep gschema
	## /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml
	## $ view /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml

	local profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
	profile=${profile:1:-1} # remove leading and trailing single quotes
	echo "profile=${profile}"


	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" scrollbar-policy 'never'"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" scrollbar-policy 'never'

	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" use-theme-colors false"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" use-theme-colors false


	#echo
	#echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" foreground-color 'rgb(255,255,255)'"
	#gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" foreground-color 'rgb(255,255,255)'

	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" foreground-color 'rgb(170,170,170)'"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" foreground-color 'rgb(170,170,170)'


	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" foreground-color 'rgb(0,0,0)'"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" background-color 'rgb(0,0,0)'


	#echo
	#echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" use-theme-transparency false"
	#gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" use-theme-transparency false

	#echo
	#echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" use-transparent-background true"
	#gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" use-transparent-background true

	#echo
	#echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" background-transparency-percent 15"
	#gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" background-transparency-percent 15

	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" visible-name 'Default'"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" visible-name 'Default'

	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" use-system-font false"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" use-system-font false

	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" font 'Monospace 14'"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" font 'Monospace 14'

	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" scrollback-unlimited true"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" scrollback-unlimited true



	echo
	echo "##"
	echo "### Tail: gnome_terminal_config_install"
	echo "################################################################################"
	echo


	echo

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

gnome_terminal_main_install () {

	gnome_terminal_package_install
	gnome_terminal_config_install

}

gnome_terminal_main_install

##
### Tail: Main
################################################################################
