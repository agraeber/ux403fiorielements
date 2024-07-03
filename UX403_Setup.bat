echo off
cls
echo.
echo ============================================================
echo This script will unpack the files required for
echo UX403 from a training share
echo to N:\UX403.
echo.
echo It will only work when started on operating system level
echo of an ADM WTS (part of a Universal Target 4.x landscape).
echo.
echo Once started, wait until the extraction process finished!
echo.
echo You may close this window to abort the script.
echo ===========================================================
pause
echo Extracting...
set path="C:\Program Files\WinRAR\";%path%
winrar x -o+ "Templates\UX403_Templates.zip" *.* "N:\UX403\Templates\"
winrar x -o+ "Solutions\UX403_Solutions.zip" *.* "N:\UX403\Solutions\"
echo ===========================================================
echo Extracting done.
echo ===========================================================
echo open "N:\UX403\Templates"
%SystemRoot%\explorer.exe "N:\UX403\Templates\"
echo ===========================================================
echo You may close this window now,
echo but keep the Window with the orion server running!!
echo ===========================================================
rem 11.01.2021 by c5069360

