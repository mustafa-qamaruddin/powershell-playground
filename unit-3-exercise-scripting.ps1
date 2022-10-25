New-Item `
-ItemType "file" `
-Value 'Write-Host "Willkommen, Hans!" -foregroundcolor Green' `
-Path $Profile.CurrentUserCurrentHost `
-Force

$PI=3.14
New-Item `
-ItemType "file" `
-Value "Write-Host `"```$PI is $PI`"" `
-Path . `
-Name "sample.ps1" `
-Force