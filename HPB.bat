@echo off
echo ##################
echo # Hotspot Bypass #
echo ##################
echo # [1] Bypass     #
echo # [2] Un-Bypass  #
echo ##################
echo #    Coded By    #
echo #   Noor Aiman   #
echo ##################

set /p optV="Option: "

if %optV% == 1 (
	cls
	echo Bypasssing..
	netsh int ipv4 set glob defaultcurhoplimit=65
	netsh int ipv6 set glob defaultcurhoplimit=65
	ipconfig /renew
	ipconfig /flushdns 
) else (
	if %optV% == 2 (
		cls
		echo Un-Bypassing
		netsh int ipv4 set glob defaultcurhoplimit=128
		netsh int ipv6 set glob defaultcurhoplimit=128
		ipconfig /renew
		ipconfig /flushdns 
	) else (
		cls
		echo WRONG OPTION!
	)
)

pause
