@echo off
setlocal
cd /d "%~dp0"

set "NODE_EXE=%~dp0runtime\node\node.exe"
if not exist "%NODE_EXE%" (
  set "NODE_EXE="
  for /f "delims=" %%I in ('where node 2^>nul') do (
    set "NODE_EXE=%%I"
    goto :found_node
  )
)

:found_node
if not defined NODE_EXE (
  echo Portable Node was not found, and Node.js is not installed.
  echo.
  echo The update-enabled launcher cannot start without Node.
  echo Restore the runtime folder or install Node.js, then run this launcher again.
  echo.
  pause
  exit /b 1
)

echo Starting Lyrian Chronicles Character Builder Beta 1.2...
echo.
echo Keep this window open while using the character builder.
echo Close this window when you are done.
echo.
"%NODE_EXE%" "%~dp0scripts\server.mjs"
pause
