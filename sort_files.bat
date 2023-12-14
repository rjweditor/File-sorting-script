@echo off
set /p directory="Enter the directory location: "

if not exist "%directory%" (
  echo Directory does not exist.
  exit /b 1
)

set "jpg_dir=%directory%\JPG"
set "raf_dir=%directory%\RAF"

:: Create JPG and RAF directories if they don't exist
if not exist "%jpg_dir%" mkdir "%jpg_dir%"
if not exist "%raf_dir%" mkdir "%raf_dir%"

:: Move .JPG files to JPG directory and .RAF files to RAF directory
for %%I in ("%directory%\*") do (
  if exist "%%~fI" (
    if "%%~xI"==".JPG" (
      move "%%~fI" "%jpg_dir%"
    ) else if "%%~xI"==".RAF" (
      move "%%~fI" "%raf_dir%"
    )
  )
)

echo Files sorted successfully!
