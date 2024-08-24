$ErrorActionPreference = "Stop"

# Write to steam_appid.txt
"1245620" | Out-File -Encoding ASCII steam_appid.txt
Write-Host "steam_appid.txt created...success."

# Start the game and get the process object
$process = Start-Process "eldenring.exe" -PassThru
Write-Host "Running eldenring.exe...success."

# Wait for the game to close
Write-Host "Waiting for the game to close..."
$process.WaitForExit()

# Delete the steam_appid.txt file
if (Test-Path "steam_appid.txt") {
    Remove-Item "steam_appid.txt" -Force
    Write-Host "steam_appid.txt deleted...success."
} else {
    Write-Host "steam_appid.txt not found."
}
