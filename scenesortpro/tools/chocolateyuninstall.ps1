$ErrorActionPreference = 'Stop'

# Inno Setup uninstaller (unins000.exe), found through the Apps & Features registry entry.
$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  softwareName   = 'SceneSort Pro*'
  fileType       = 'exe'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
  validExitCodes = @(0)
}

[array]$key = Get-UninstallRegistryKey -SoftwareName $packageArgs['softwareName']

if ($key.Count -eq 1) {
  $key | ForEach-Object {
    $packageArgs['file'] = "$($_.UninstallString -replace '"', '')"
    Uninstall-ChocolateyPackage @packageArgs
  }
} elseif ($key.Count -eq 0) {
  Write-Warning "$($packageArgs['packageName']) has already been uninstalled by other means."
} else {
  Write-Warning "$($key.Count) matches found for '$($packageArgs['softwareName'])'. To avoid removing the wrong program, nothing was uninstalled."
  $key | ForEach-Object { Write-Warning "- $($_.DisplayName)" }
}
