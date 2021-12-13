Write-Host "Preparing to launch..." -ForegroundColor black -BackgroundColor White

$assetsPath = Test-Path ".\assets\cubyz\"

if (!$assetsPath)
{
    Write-Host "Assets haven't been downloaded. Please run setup.ps1" -ForegroundColor black -BackgroundColor White
    Exit
}

Write-Host "Copying mod to mods folder..." -ForegroundColor black -BackgroundColor White

$modsPath = Test-Path ".\mods\"

if (!$modsPath)
{
    new-item ".\mods" -itemtype directory | Out-Null
}

Get-ChildItem '.\target' -Filter '*.jar' | Copy-Item -Destination '.\mods\' -Force -PassThru