Write-Host ""
Write-Host "Latest AgIO Shortcut"
Write-Host ""

if (-Not (Test-Path "C:\LatestAgOpenGPS\AgOpenGPSVersionsPath.txt")) {
    Write-Host "C:\LatestAgOpenGPS\AgOpenGPSVersionsPath.txt does not exist."
    Write-Host "Please enter the path of the folder where you keep AgOpenGPS releases"
    Write-Host "This may be a folder like ""C:\AgOpenGPS Releases"" (quotation marks should be included)"
    $AgOpenGPS_versionsPath = Read-Host "AgOpenGPS releases path"
    New-Item -Path . -Name "AgOpenGPSVersionsPath.txt" -ItemType "File" -Value $AgOpenGPS_VersionsPath
    Exit
} 
else {
    $AgOpenGPS_versionsPath = Get-Content -Path .\AgOpenGPSVersionsPath.txt -TotalCount 1
    $latest = dir "C:\Users\Jasper\Documents\AgOpenGPS Releases" agio.exe -recurse |select fullname, @{n="Version";e={[version]$_.VersionInfo.FileVersionRaw}} | sort Version | select -Last 1
    Start-Process $latest.FullName
}
