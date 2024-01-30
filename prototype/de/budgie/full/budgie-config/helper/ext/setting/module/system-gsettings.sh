

################################################################################
### Head: System / Gsettings
##

sys_glib_compile_schemas () {

	util_error_echo
	util_error_echo sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
	util_error_echo

	return 0
}

##
### Tail: System / Gsettings
################################################################################
