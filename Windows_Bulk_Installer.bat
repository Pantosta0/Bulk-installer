echo OFF

NET SESSION >nul 2>&1

IF %ERRORLEVEL% EQU 0 (

   echo.

) ELSE (

   echo.-------------------------------------------------------------
   echo          Error: Necesito permisos de administrador.
   echo                 Correme como admin gilipollas
   echo. -------------------------------------------------------------
   pause
   EXIT /B 1

)

powershell -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco feature enable -n=allowGlobalConfirmation

echo Ok, ready to go!
pause

@rem ----[ Program List ]----
choco install opera-gx
choco install git
choco install gitkraken
choco install vscode
choco install winrar
choco install vlc
choco install discord
choco install steam
choco install ubisoft-connect
choco install epicgameslauncher
choco install powertoys 
choco install office365business
choco install msiafterburner
choco install droidcamclient
choco install obs-studio
choco install minecraft-launcher
choco install borderlessgaming
choco install k-litecodecpackmega
choco install gimp
choco install jre8
choco install vcredist140
choco install filezilla
choco install spotify
choco install amd-ryzen-chipset
choco install geforce-experience
@rem ----[ Program List ]----
pause

echo.
echo All programs installed. Welcome Back to Windows o7
pause