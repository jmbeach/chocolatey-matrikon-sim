
$packageName = 'matrikon-sim'
$softwareName = 'MatrikonOPC Server for Simulation*'
$installerType = 'EXE' 
$silentArgs = ' REMOVE=TRUE MODIFY=FALSE /s'
$registryKey = "hklm:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\MatrikonOPC Server for Simulation"
$uninstallString = (Get-ItemProperty $registryKey -name ModifyPath).ModifyPath

Uninstall-ChocolateyPackage -PackageName $packageName -FileType 'EXE' -SilentArgs $silentArgs -File $uninstallString