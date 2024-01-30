

################################################################################
### Head: Setting / Module / Budgie / Variable
##

budgie_keybind_custom_var_init () {

	THE_BUDGIE_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME="50_budgie-keybind-custom.conf"

	THE_BUDGIE_KEYBIND_CUSTOM_SOURCE_DCONF_DB_FILE_PATH="${THE_SOURCE_DCONFDB_DIR_PATH}/${THE_BUDGIE_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME}"
	THE_BUDGIE_KEYBIND_CUSTOM_TARGET_DCONF_DB_FILE_PATH="${THE_TARGET_DCONFDB_DIR_PATH}/${THE_BUDGIE_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME}"


	return 0

}

budgie_keybind_custom_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: budgie_keybind_custom_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Budgie / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_BUDGIE_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME=${THE_BUDGIE_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_BUDGIE_KEYBIND_CUSTOM_SOURCE_DCONF_DB_FILE_PATH=${THE_BUDGIE_KEYBIND_CUSTOM_SOURCE_DCONF_DB_FILE_PATH}"
	util_debug_echo "THE_BUDGIE_KEYBIND_CUSTOM_TARGET_DCONF_DB_FILE_PATH=${THE_BUDGIE_KEYBIND_CUSTOM_TARGET_DCONF_DB_FILE_PATH}"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: budgie_keybind_custom_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

budgie_keybind_custom_var_init
budgie_keybind_custom_var_dump

##
### Tail: Setting / Module / Budgie / Variable
################################################################################


################################################################################
### Head: Setting / Module / Budgie / Portal
##

budgie_keybind_custom_config_install () {

	util_error_echo "budgie_keybind_custom_config_install"

	budgie_keybind_custom_settings_set_all

	return 0
}


budgie_keybind_custom_asset_install () {

	#util_error_echo "budgie_keybind_custom_asset_install"

	util_error_echo "!!! Do Nothing !!!"

	return 0
}


budgie_keybind_custom_prototype_install () {

	#util_error_echo "budgie_keybind_custom_prototype_install"

	sys_dconf_init

	budgie_keybind_custom_dconfdb_put_all

	sys_dconf_update

	return 0
}


##
### Tail: Setting / Module / Budgie / Portal
################################################################################


################################################################################
### Head: Setting / Module / Budgie / Settings
##

budgie_keybind_custom_settings_set_all () {


	return 0
}

##
### Tail: Setting / Module / Budgie / Settings
################################################################################


################################################################################
### Head: Setting / Module / Budgie / Dconf
##

budgie_keybind_custom_dconfdb_put_all () {

	budgie_keybind_custom_dconfdb_put_keybind_custom

	return 0
}


budgie_keybind_custom_dconfdb_put_keybind_custom () {

	local source_dconfdb_file_path="${THE_BUDGIE_KEYBIND_CUSTOM_SOURCE_DCONF_DB_FILE_PATH}"

	local target_dconfdb_file_path="${THE_BUDGIE_KEYBIND_CUSTOM_TARGET_DCONF_DB_FILE_PATH}"

	#util_error_echo "${source_dconfdb_file_path}"

	#util_error_echo "${target_dconfdb_file_path}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${source_dconfdb_file_path}" "${target_dconfdb_file_path}"
	sudo install -Dm644 "${source_dconfdb_file_path}" "${target_dconfdb_file_path}"
	util_error_echo


	return 0
}

##
### Tail: Setting / Module / Budgie / Dconf
################################################################################
