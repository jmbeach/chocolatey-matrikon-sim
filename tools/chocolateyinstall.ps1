
$path = Join-Path "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 'MatrikonOPCSimulation.EXE'
$name= 'matrikon-sim'
$silent = '/s'

Install-ChocolateyPackage $name 'exe' $silent $path
 
