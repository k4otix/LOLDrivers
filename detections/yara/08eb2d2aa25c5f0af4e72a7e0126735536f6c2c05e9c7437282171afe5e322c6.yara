
rule PUA_VULN_Driver_MyDriverscom_HWM_DriverGenius_7vMJ {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 507a649eb585d8d0447eab0532ef0c73.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "08eb2d2aa25c5f0af4e72a7e0126735536f6c2c05e9c7437282171afe5e322c6"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00440072006900760065007200470065006e0069007500730020004800610072006400770061007200650020006d006f006e00690074006f0072 } /* FileDescription DriverGenius Hardware monitor */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]004d00790044007200690076006500720073002e0063006f006d } /* CompanyName MyDrivers.com */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0039002e0032002e003700300037002e0031003200310034 } /* FileVersion 9.2.707.1214 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0032003000310036002e0037002e0037002e0031003200310034 } /* ProductVersion 2016.7.7.1214 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]00480057004d } /* InternalName HWM */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00440072006900760065007200470065006e006900750073 } /* ProductName DriverGenius */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]006d00790064007200690076006500720073002e007300790073 } /* OriginalFilename mydrivers.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f00700079007200690067006800740020004d00790044007200690076006500720073002e0063006f006d00200061006c006c002000720069006700680074 } /* LegalCopyright Copyright MyDrivers.com all right */
	condition:
		all of them
}