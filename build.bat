@echo off

:: Setup ::
:: Put the location of your AddonBuilder.exe here ::
set builder=D:\Games\Steam\SteamApps\common\Arma 3 Tools\AddonBuilder\AddonBuilder.exe

:: Put the source of the Project here ( where the addon folders are ) ::
set source=D:\Documents\Projects\AGM

:: Put the place where you want the pbos to land here ::
set destination=%source%\build

:: Put the addon prefix here ( your addons should all start with this, ie. AGM for all the agm addons [ AGM_Medical, AGM_Core, etc. ])
set prefix=AGM

:: DON'T TOUCH ME ::
cd %source%
if not exist "%destination%" mkdir "%destination%"
for /d %%G in ("%prefix%*") do "%builder%" "%source%\%%G" "%destination%" -project="%prefix%" -packonly -clear
pause