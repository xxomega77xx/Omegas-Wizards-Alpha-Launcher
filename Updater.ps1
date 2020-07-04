$currentDesktopFilePath = (Get-ChildItem .\ | Where-Object Name -Match .exe).FullName
$serverExeUrl = "https://github.com/xxomega77xx/Omegas-Wizards-Alpha-Launcher/blob/master/bin/x64/OmegaWizardsAlphaLauncher.exe"
Invoke-WebRequest -Uri $serverExeUrl -OutFile $currentDesktopFilePath