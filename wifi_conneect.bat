adb disconnect
@echo off
title ADB Over WiFi
color 0B
mode con:cols=123
:c1
cls
:start
echo  -------------------------------------------------------------------------------------------------------------------------
echo                                                    ADB OVER WiFi V-1.0
echo  -------------------------------------------------------------------------------------------------------------------------
echo                                             Connect your android to WiFi Network
echo                                    And make sure your Computer and Android is in same Network
echo.
echo.                         
echo.
echo.
echo                                   Enable USB Debugging and connect it with your computer via usb.
echo.
echo.
echo.
echo                                                       Press "1" if completed
echo                                                       Press "2" To add LOC / knnow about me
echo                                                       Press "3" Quit
echo --------------------------------------------------------------------------------------------------------------------------
set choice=
SET /P choice=What would you like to do:
if %choice%==1 (goto connectADB)
if %choice%==2 (goto abtME)
if %choice%==3 (goto quitADB)
else {
cls
echo You got an error
echo.
echo.
echo You dindn't enter correct choice
echo.
goto start
	}
cls
echo You got an error Please try again
echo.
echo.
echo You dindn't enter right character
echo.
	}

:connectADB
echo.
echo.
echo Enter valid port number Example. 5555
set port=
echo.
SET /P port=Enter port number here:
echo.
echo.
echo Go to wifi settings in android goto advance settings and type your IP address Example: 192.168.1.2
set ip=
echo.
SET /P ip=IP address here:
adb tcpip %port%
adb connect %ip%:%port%
echo.
echo.
echo.
echo If no error  message adb over wifi sucessfull
echo.
echo Now you can remove USB cable.
pause >nul
cls
goto start


:abtME
echo.
echo.
echo ADB OVER WiFi V-1.0
echo Developed by Akshay Katariya.
echo Please send your reviews and suggestions on dev.akshay1210@gmail.com
pause >nul
goto c1
cls

:quitADB
exit
