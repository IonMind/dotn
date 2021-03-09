@echo off
echo Hello World from %AGENT_NAME%
set PULL_PLAN_PATH_WIN=$(Build.SourcesDirectory)
set PULL_PLAN_PATH_WIN=%PULL_PLAN_PATH_WIN:\=\\%
set PRODUCTVERSION=$(MajorVersion).$(MinorVersion).0.$(Build.BuildNumber)
echo %PULL_PLAN_PATH_WIN%

for /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
set TodayDate=%ldt:~0,4%-%ldt:~4,2%-%ldt:~6,2%
echo %TodayDate%
set DateTime=%ldt:~4,2%/%ldt:~6,2%/%ldt:~0,4% %ldt:~8,2%:%ldt:~10,2%:%ldt:~12,2%
echo %DateTime%
set ExeName=$(ExeNamePrefix)SalesCloser360 %TodayDate%.exe

