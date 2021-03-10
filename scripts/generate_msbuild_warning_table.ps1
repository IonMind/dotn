cd D:\
$PATH=$args[0];
$REPO_ROOT=$PATH.Replace('/','\')
Write-Host $REPO_ROOT
# if(${bamboo.GenerateWarnings} -eq 1){ exit }

if("${Build.SourceBranchName}" -eq "master"){
    Start-Process -FilePath "$REPO_ROOT\Source\Sales_Closer_360\Libraries\CodeAnalysisWarningsUtility\CodeAnalysisWarningsUtility.exe" -ArgumentList "--tempalteFile `"`" --templateDirectory `"$REPO_ROOT\Source\Sales_Closer_360\Libraries\CodeAnalysisWarnings_Utility\MSBuildWarnings`" --output ${Build.SourcesDirectory} --msBuildFile `"${SalesCloserCSLog}`""
    $text = "FxCopCount="
    Out-File -FilePath "${Build.SourcesDirectory}\repovar.properties" -InputObject $text -Append -Encoding ascii
}
else{
    # $code = Start-Process -FilePath "$REPO_ROOT\Source\Sales_Closer_360\Libraries\CodeAnalysisWarningsUtility\CodeAnalysisWarningsUtility.exe" -ArgumentList "--tempalteFile `"`" --templateDirectory `"$REPO_ROOT\Source\Sales_Closer_360\Libraries\CodeAnalysisWarnings_Utility\MSBuildWarnings`" --output ${bamboo.inject.REPO_ROOT_VAR} --msBuildFile `"${bamboo.inject.SalesCloserCSLog}`" -n True" -Wait -PassThru
    # $FxCopCount = $code.ExitCode
    # $text = "FxCopCount=$FxCopCount"
    # Out-File -FilePath "${bamboo.build.working.directory}\repovar.properties" -InputObject $text -Append -Encoding ascii
}
exit