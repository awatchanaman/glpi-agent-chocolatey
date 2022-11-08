
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/glpi-project/glpi-agent/releases/download/1.4/GLPI-Agent-1.4-x86.msi'
$url64      = 'https://github.com/glpi-project/glpi-agent/releases/download/1.4/GLPI-Agent-1.4-x64.msi'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url64bit      = $url64
  softwareName  = 'glpi-agent*'
  checksum      = ''
  checksumType  = 'sha256' 
  checksum64    = ''
  checksumType64= 'sha256' 
  silentArgs    = "/quiet"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs



