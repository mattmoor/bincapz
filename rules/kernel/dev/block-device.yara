rule block_devices : notable {
	meta:
		description = "works with block devices"
	strings:
		$sys_val = /\/sys\/block[\$%\w\{\}]{0,16}/
		$sys_dev_val = /\/sys\/dev\/block[\$%\w\{\}]{0,16}/
	condition:
		any of them
}

rule dev_sd : notable {
	meta:
		capability = "CAP_SYS_RAWIO"
		description = "Accesses raw generic block devices"
	strings:
		$val = /\/dev\/sd[\$%\w\{\}]{0,10}/
	condition:
		any of them
}
