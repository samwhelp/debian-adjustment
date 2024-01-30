

################################################################################
### Head: Setting / Module / Mate-Terminal / Variable
##

mate_terminal_var_init () {

	THE_MATE_TERMINAL_DCONF_DB_FILE_NAME="50_mate-terminal.conf"

	THE_MATE_TERMINAL_SOURCE_DCONF_DB_FILE_PATH="${THE_SOURCE_DCONFDB_DIR_PATH}/${THE_MATE_TERMINAL_DCONF_DB_FILE_NAME}"
	THE_MATE_TERMINAL_TARGET_DCONF_DB_FILE_PATH="${THE_TARGET_DCONFDB_DIR_PATH}/${THE_MATE_TERMINAL_DCONF_DB_FILE_NAME}"


	return 0

}

mate_terminal_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: mate_terminal_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Mate-Terminal / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_MATE_TERMINAL_DCONF_DB_FILE_NAME=${THE_MATE_TERMINAL_DCONF_DB_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_MATE_TERMINAL_SOURCE_DCONF_DB_FILE_PATH=${THE_MATE_TERMINAL_SOURCE_DCONF_DB_FILE_PATH}"
	util_debug_echo "THE_MATE_TERMINAL_TARGET_DCONF_DB_FILE_PATH=${THE_MATE_TERMINAL_TARGET_DCONF_DB_FILE_PATH}"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: mate_terminal_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

mate_terminal_var_init
mate_terminal_var_dump

##
### Tail: Setting / Module / Mate-Terminal / Variable
################################################################################


################################################################################
### Head: Setting / Module / Mate-Terminal / Portal
##

mate_terminal_config_install () {

	util_error_echo "mate_terminal_config_install"

	mate_terminal_settings_set_all

	return 0
}


mate_terminal_asset_install () {

	#util_error_echo "mate_terminal_asset_install"

	util_error_echo "!!! Do Nothing !!!"

	return 0
}


mate_terminal_prototype_install () {

	#util_error_echo "mate_terminal_prototype_install"

	sys_dconf_init

	mate_terminal_dconfdb_put_all

	sys_dconf_update

	mate_terminal_dconf_reset_all

	return 0
}


##
### Tail: Setting / Module / Mate-Terminal / Portal
################################################################################


################################################################################
### Head: Setting / Module / Mate-Terminal / Settings
##

mate_terminal_settings_set_all () {

	mate_terminal_config_by_gsettings

	return 0
}

mate_terminal_config_by_gsettings () {


	##
	##
	## ``` sh
	## gsettings list-recursively | grep 'org.mate.terminal'
	##
	## gsettings list-relocatable-schemas | grep mate | grep terminal
	##
	## gsettings list-recursively org.mate.terminal.profile:/
	##
	## gsettings list-recursively org.mate.terminal.profile:/org/mate/terminal/profiles/default/
	## ```
	##


	util_error_echo
	util_error_echo gsettings set org.mate.terminal.global profile-list "['default']"
	gsettings set org.mate.terminal.global profile-list "['default']"

	util_error_echo
	util_error_echo gsettings set org.mate.terminal.global default-profile "'default'"
	gsettings set org.mate.terminal.global default-profile "'default'"


	util_error_echo
	util_error_echo


	##
	## relocatable-schemas
	##

	util_error_echo
	util_error_echo gsettings set "org.mate.terminal.profile:/org/mate/terminal/profiles/default/" visible-name "'Default'"
	gsettings set "org.mate.terminal.profile:/org/mate/terminal/profiles/default/" visible-name "Default"


	return 0

}

##
### Tail: Setting / Module / Mate-Terminal / Settings
################################################################################


################################################################################
### Head: Setting / Module / Mate-Terminal / Dconf
##

mate_terminal_dconfdb_put_all () {

	mate_terminal_dconfdb_put_main

	return 0
}


mate_terminal_dconfdb_put_main () {

	local source_dconfdb_file_path="${THE_MATE_TERMINAL_SOURCE_DCONF_DB_FILE_PATH}"

	local target_dconfdb_file_path="${THE_MATE_TERMINAL_TARGET_DCONF_DB_FILE_PATH}"

	#util_error_echo "${source_dconfdb_file_path}"

	#util_error_echo "${target_dconfdb_file_path}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${source_dconfdb_file_path}" "${target_dconfdb_file_path}"
	sudo install -Dm644 "${source_dconfdb_file_path}" "${target_dconfdb_file_path}"
	util_error_echo


	return 0

}

mate_terminal_dconf_reset_all () {

	util_error_echo
	util_error_echo dconf reset -f /org/mate/terminal/profiles/default/
	dconf reset -f /org/mate/terminal/profiles/default/
	util_error_echo

	return 0

}

##
### Tail: Setting / Module / Mate-Terminal / Dconf
################################################################################
