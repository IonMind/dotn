set PULL_PLAN_PATH_WIN=$(Build.SourcesDirectory)
set PULL_PLAN_PATH_WIN=%PULL_PLAN_PATH_WIN:\=\\%
set PRODUCTVERSION=$(MajorVersion).$(MinorVersion).0.$(Build.BuildNumber)


for /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
set TodayDate=%ldt:~0,4%-%ldt:~4,2%-%ldt:~6,2%
echo %TodayDate%
set DateTime=%ldt:~4,2%/%ldt:~6,2%/%ldt:~0,4% %ldt:~8,2%:%ldt:~10,2%:%ldt:~12,2%
echo %DateTime%
set ExeName=$(ExeNamePrefix)SalesCloser360 %TodayDate%.exe

set targetPath="$(NAS_Path)\\Builds\\Sales Closer\\"
set SC_REPO_PATH=%PULL_PLAN_PATH_WIN%\\Source\\Sales_Closer_360


( 
    @echo REPO_ROOT_VAR=%PULL_PLAN_PATH_WIN%
    @echo PRODUCTVERSION=%PRODUCTVERSION%
    @echo LIB_SUB_ROOT=Source\\Libraries
    @echo SCLIB_PATH=%SC_REPO_PATH%\\Libraries
    @echo SC_REPO_PATH=%SC_REPO_PATH%
    @echo ExeName=%ExeName%
    @echo targetPath=%targetPath%
)> "$(Build.SourcesDirectory)\repovar.properties"