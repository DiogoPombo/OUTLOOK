::--------------------------------------------::
::       OUTLOOK - AUTO OUTLOOK STARTER       ::
::  Author: Diogo Santos Pombo - \Õ/ - @2026  ::
::--------------------------------------------::

@echo off
chcp 1252 > nul
@title OUTLOOK

setlocal

set "SPACE= "
set "HEADER=********************************************* OUTLOOK *********************************************"

echo.
echo.
echo %SPACE%%SPACE%%SPACE%%HEADER%
echo.
echo.

for /f "tokens=3" %%I in ('reg query "HKEY_CURRENT_USER\Control Panel\International" /v LocaleName 2^>nul') do set "LANGUAGE=%%I"
set "LANG_PREFIX=%LANGUAGE:~0,2%"

if /i "%LANG_PREFIX%"=="pt" (
    set "IDIOMA=PT"
) else (
    set "IDIOMA=EN"
)

if "%IDIOMA%"=="PT" (
    echo %SPACE%%SPACE%Por favor aguarde! Microsoft Outlook está iniciando. . .
) else (
    echo %SPACE%%SPACE%Please wait! Microsoft Outlook is starting. . .
)

start olk.exe
if not errorlevel 1 (
    goto end
)

start OUTLOOK.EXE
if not errorlevel 1 (
    goto end
)

start "OUTLOOK" "msedge" --app="https://outlook.office.com"
if not errorlevel 1 (
    goto end
)

color 0C
if "%IDIOMA%"=="PT" (
    set "MSGERROR=ERRO: Microsoft Outlook não foi encontrado ou está desabilitado neste Windows!"
    echo.
    echo %SPACE%%SPACE%%MSGERROR%
    echo.
    echo %SPACE%%SPACE%Por favor, verifique a instalação do Outlook!
) else (
    set "MSGERROR=ERROR: Microsoft Outlook was not found or is disabled on this Windows!"
    echo.
    echo %SPACE%%SPACE%%MSGERROR%
    echo.
    echo %SPACE%%SPACE%Please, check your Outlook installation!
)
powershell -Command "[System.Media.SystemSounds]::Exclamation.Play()"
powershell -Command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('%MSGERROR%', 'OUTLOOK')"


:end
endlocal
exit