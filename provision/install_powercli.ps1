# Install PowerCLI
Set-executionPolicy RemoteSigned -Confirm:$false -force

$myargs = $myargs = '/b"C:\Windows\Temp" /VADDLOCAL=ALL /S /V"/qn ALLUSERS=1 REBOOT=ReallySuppress"'

$exe = "C:\vagrant\provision\VMware-PowerCLI-6.3.0-3737840.exe"

Start-process -Wait $exe $myargs

Add-PSSnapin -Name VMware.VimAutomation.Core