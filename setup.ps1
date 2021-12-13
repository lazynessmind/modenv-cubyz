Write-Host "Running cubyz development setup..." -ForegroundColor black -BackgroundColor White
Write-Host "Download assets from cubyz..." -ForegroundColor black -BackgroundColor White

$FileName = ".\assets.zip"
if (Test-Path $FileName) {
  Remove-Item $FileName
}

Invoke-WebRequest -Uri "https://github.com/PixelGuys/Cubyz/releases/download/R6/assets.zip" -OutFile ".\assets.zip"

Write-Host "Uncompressing assets.zip..." -ForegroundColor black -BackgroundColor White

Expand-Archive -Force -Path ".\assets.zip" -DestinationPath "."

$FileName = ".\assets.zip"
if (Test-Path $FileName) {
    Write-Host "Deleting assets.zip" -ForegroundColor black -BackgroundColor White
    Remove-Item $FileName
}

$FileName = ".\.idea\"
$runFolder = Test-Path ".\.idea\runConfigurations\"

if (Test-Path $FileName)
{
    if (!$runFolder)
    {
        Write-Host "Creating runs folder on .idea folder..." -ForegroundColor black -BackgroundColor White
        new-item ".\.idea\runConfigurations\" -itemtype directory | Out-Null
    }
    Write-Host "Moving Intellij Run Config to workspace..." -ForegroundColor black -BackgroundColor White
    Copy-Item -Path ".\dev\runs\*" -Destination ".\.idea\runConfigurations\"
    Write-Host "NOTE: If the runs don't appear on the run selector, restart Intellij." -ForegroundColor White -BackgroundColor Yellow
}

Write-Host "Setup is done..." -ForegroundColor black -BackgroundColor White