@echo off

:: Setup ::
:: Put the location of your AddonBuilder.exe here ::
set builder=D:\Games\Steam\SteamApps\common\Arma 3 Tools\AddonBuilder.exe

:: Put the source of the Project here ( where the AGM_ folders are ) ::
set source=D:\Documents\Projects\AGM

:: Put the place where you want the pbos to land here ::
set destination=D:\Documents\Projects\agm-build\build

:: DON'T TOUCH ME ::
cd %source%
if not exist "%destination%" mkdir "%destination%"
for /d %%G in ("AGM_*") do "%builder%" "%source%\%%G" "%destination%" -project="%source%" -clear
pause