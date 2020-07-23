@echo off
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
Set hname=%COMPUTERNAME%
cd %HOME%\my_dir
git add --all
git commit -m "File Backup: %mydate%_%mytime%_%hname%"
git push  2>&1
EXIT