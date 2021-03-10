# if("${bamboo.planRepository.1.branchName}" -ne "master"){
#    Exit 0
# }
$libpath = $args[0]
$scpath = $args[1]

$test = "sign /f `"$scpath\Libraries\DigitalCertificate\CivilGEO_CodeSigningCert.pfx`" /p civilgeo3edc#EDC" + " " + "`"$scpath\Source\MainWindow\bin\Release\Sales Closer 360.exe`""
Write-Host $test
Start-Process -FilePath "C:\Program Files (x86)\Microsoft SDKs\ClickOnce\SignTool\signtool.exe" -ArgumentList $test -Wait