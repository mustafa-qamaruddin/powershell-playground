Param(
  [Parameter(Mandatory, HelpMessage = "please provide either of dev, test, staging")]
  [string]$Env
)

If ($Env -eq 'prod') {
  Write-Error "access denied"
}

Write-Host "Parameter passed is $Env"