Param (
  [Parameter(Mandatory)]
  [string]$Path
)

Try {
  Get-Content $Path -ErrorAction Stop
} Catch [System.IO.IOException] {
  $_.Exception | Select-Object *
  Write-Error "IO Catch $($_.Exception.Message)"
} Catch {
  $_.Exception | Select-Object *
  Write-Error "Generic Catch $($_.Exception.Message)"
}

Get-ChildItem . | Select-Object *                
(Get-ChildItem .).Extension | Sort-Object -Unique