Write-Host "Cleaning workspace..." -ForegroundColor black -BackgroundColor White

$assetsCubyz = Test-Path "./assets/cubyz/"
$assetsBackground = Test-Path "./assets/backgrounds/"
$saves = Test-Path "./saves/"
$mods = Test-Path "./mods/"
$logs = Test-Path "./logs/"
$settings = Test-Path "./settings.json"
$consoleHistory = Test-Path "./ConsoleHistory"
$target = Test-Path "./target/"

# assets
if ($assetsCubyz)
{
    if ($assetsBackground)
    {
        Write-Host "Removing cubyz assets..." -ForegroundColor black -BackgroundColor White
        Remove-Item -Recurse -Force "./assets/cubyz/"
        Remove-Item -Recurse -Force "./assets/backgrounds/"
    }
}

# mods
if ($mods)
{
    Write-Host "Removing mods folder..." -ForegroundColor black -BackgroundColor White
    Remove-Item -Recurse -Force "./mods/"
}

# logs
if ($logs)
{
    Write-Host "Removing mods folder..." -ForegroundColor black -BackgroundColor White
    Remove-Item -Recurse -Force "./logs/"
}

# Settings
if ($settings)
{
    Write-Host "Removing settings.json..." -ForegroundColor black -BackgroundColor White
    Remove-Item -Recurse -Force "./settings.json"
}

# Settings
if ($consoleHistory)
{
    Write-Host "Removing ConsoleHistory..." -ForegroundColor black -BackgroundColor White
    Remove-Item -Recurse -Force "./ConsoleHistory"
}

# Settings
if ($saves)
{
    Write-Host "Removing world saves folder..." -ForegroundColor black -BackgroundColor White
    Remove-Item -Recurse -Force "./saves/"
}

# target
if($target){
    Write-Host "Removing target folder..." -ForegroundColor black -BackgroundColor White
    Remove-Item -Recurse -Force "./target/"
}

Write-Host "Done." -ForegroundColor black -BackgroundColor White
Write-Host "Note: Don't forget to rerun setup.ps1 again." -ForegroundColor White -BackgroundColor Yellow