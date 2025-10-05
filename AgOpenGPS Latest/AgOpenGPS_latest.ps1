Write-Host ""
Write-Host "Latest AgOpenGPS Shortcut"
Write-Host ""

if (-Not (Test-Path "C:\AgOpenGPS Latest\AgOpenGPSVersionsPath.txt")) {
    Write-Host "C:\AgOpenGPS Latest\AgOpenGPSVersionsPath.txt does not exist."
    Write-Host "Please enter the path of the folder where you keep AgOpenGPS releases"
    Write-Host "This may be a folder like ""C:\AgOpenGPS Releases"" (the path you enter should not include quotation marks)"
    $AgOpenGPS_versionsPath = Read-Host "AgOpenGPS releases path"
    New-Item -Path "C:\AgOpenGPS Latest" -Name "AgOpenGPSVersionsPath.txt" -ItemType "File" -Value $AgOpenGPS_VersionsPath
    Exit
} 
else {
    $AgOpenGPS_versionsPath = Get-Content -Path .\AgOpenGPSVersionsPath.txt -TotalCount 1
    $latest = dir $AgOpenGPS_versionsPath agopengps.exe -recurse |select fullname, @{n="Version";e={[version]$_.VersionInfo.FileVersionRaw}} | sort Version | select -Last 1
    #Write-Host $latest.FullName
    Start-Process $latest.FullName
}

#Read-Host -Prompt "Press any key to continue or CTRL+C to quit" | Out-Null
