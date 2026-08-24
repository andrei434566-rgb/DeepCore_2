@echo off
setlocal
set "BASE=%~dp0"
echo.
echo Assembling DeepCore_2_20260824.zip...
copy /b "%BASE%DeepCore_2_20260824.zip.github.part01"+"%BASE%DeepCore_2_20260824.zip.github.part02A"+"%BASE%DeepCore_2_20260824.zip.github.part02B"+"%BASE%DeepCore_2_20260824.zip.github.part03" "%BASE%DeepCore_2_20260824.zip"
if errorlevel 1 (
  echo.
  echo Assembly failed. Keep all four parts in this folder and try again.
  pause
  exit /b 1
)
echo.
echo Done: DeepCore_2_20260824.zip
explorer /select,"%BASE%DeepCore_2_20260824.zip"
pause
