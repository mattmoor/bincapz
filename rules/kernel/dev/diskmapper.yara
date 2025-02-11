rule dev_dm : notable {
	meta:
		capability = "CAP_SYS_RAWIO"
		description = "Accesses raw LVM disk mapper devices"
	strings:
		$val = /\/dev\/dm-[\$%\w\{\}]{0,10}/
	condition:
		any of them
}
