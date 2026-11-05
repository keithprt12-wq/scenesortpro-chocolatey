$ErrorActionPreference = 'Stop'

# SceneSort Pro 1.4.0, Inno Setup installer, 64-bit only.
# SHA256 from release-1.4.0/SHA256SUMS.txt (297,589,779 bytes). Versioned URL, so the hash never breaks on the next release.
$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://dl.scenesortpro.com/downloads/SceneSortProSetup-1.4.0.exe'
  checksum64     = 'B3558E5A223CA33770C50A42E364487ED0A61709B883A7A332189292A21C26D5'
  checksumType64 = 'sha256'
  softwareName   = 'SceneSort Pro*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
