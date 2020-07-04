Write-Host "Stopping launcher process..."
Stop-Process -Name OmegaWizardsAlphaLauncher -Force
Start-Sleep 3
$currentDesktopFilePath = (Get-ChildItem .\ | Where-Object Name -Match OmegaWizardsAlphaLauncher.exe).FullName
$serverExeUrl = "https://github.com/xxomega77xx/Omegas-Wizards-Alpha-Launcher/raw/master/bin/x64/OmegaWizardsAlphaLauncher.exe"
Write-Host "Downloading latest update..."
Invoke-WebRequest -Uri $serverExeUrl -OutFile $currentDesktopFilePath
Start-Sleep 5
Write-Host "Download Completed."
Start-Sleep 5
Write-Host "Launching updated launcher..."
Start-Process -FilePath $currentDesktopFilePath