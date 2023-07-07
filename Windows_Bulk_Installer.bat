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
$Packages = 'opera-gx', 'git', 'gitkraken', 'vscode', 'winrar','vlc','discord','steam','ubisoft-connect','epicgameslauncher','powertoys','office365business','msiafterburner','droidcamclient','obs-studio','minecraft-launcher','borderlessgaming','k-litecodecpackmega','gimp','jre8','vcredist140','filezilla','spotify','amd-ryzen-chipset', 'geforce-experience'

ForEach ($PackageName in $Packages)
{
    choco install $PackageName -y
}
@rem ----[ Program List ]----
pause

echo.
echo All programs installed. Welcome Back to Windows o7
pause