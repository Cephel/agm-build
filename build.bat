:: SETUP ::
:: Put the location of your AddonBuilder.exe here ::
SET builder=D:\Games\Steam\SteamApps\common\Arma 3 Tools\AddonBuilder.exe

:: Put the source of the Project here ( where the AGM_ folders are ) ::
SET source=D:\Documents\Projects\AGM

:: Put the place where you want the pbos to land here ::
SET destination=D:\Documents\Projects\agm-build\@AGM

:: DON'T TOUCH ME ::
CD %source%
IF NOT EXIST %destination% MKDIR %destination%
IF NOT EXIST %destination%\addons MKDIR %destination%\addons
FOR /D %%G in ("AGM_*") DO "%builder%" "%source%\%%G" "%destination%\addons" -PACK -CLEAR

PAUSE