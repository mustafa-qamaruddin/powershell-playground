Param(
  [Parameter(Mandatory, HelpMessage="source directory")]
  [string]$Source = './sample.ps1',
  [Parameter(Mandatory, HelpMessage="destination directory")]
  [string]$Destination = './'
)
$date = Get-Date -format "yyyy-MM-dd"
Compress-Archive -Path $Source -CompressionLevel 'Fastest' -DestinationPath "$($Destination+"backup-"+$date)"
Write-Host "Create backup at $($destination + './backup-' + $date + '.zip')"