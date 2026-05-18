@echo off
title Conectividad - MiPing - Leon
color 0A

:menu
cls
echo -------------------------------------
echo     HERRAMIENTA DE CONECTIVIDAD
echo -------------------------------------
echo.
echo 1 - Verificacion de Bucle Local
echo 2 - IPCONFIG
echo 3 - Prueba de Conectividad Estandar
echo 4 - Monitoreo Continuo (-t)
echo 5 - Enviar 10 paquetes (-n)
echo 6 - NSLOOKUP
echo 7 - TRACERT
echo 8 - Salir
echo.

set /p opcion=Seleccione una opcion:

if %opcion%==1 goto loopback
if %opcion%==2 goto obtenerip
if %opcion%==3 goto estandar
if %opcion%==4 goto continuo
if %opcion%==5 goto diezpaquetes
if %opcion%==6 goto nslookup
if %opcion%==7 goto tracert
if %opcion%==8 goto salir

echo.
echo Opcion invalida
pause
goto menu


:loopback
cls
echo -------------------------------------
echo   Verificacion de bucle local
echo -------------------------------------
echo.
ping 127.0.0.1
echo.
pause
goto menu


:obtenerip
cls
echo -------------------------------------
echo            IPCONFIG
echo -------------------------------------
echo.
ipconfig
echo.
pause
goto menu


:estandar
cls
echo -------------------------------------
echo   Prueba de conectividad
echo -------------------------------------
echo.
set /p url=Ingrese una URL:
echo.
ping %url%
echo.
pause
goto menu


:continuo
cls
echo -------------------------------------
echo    Monitoreo continuo (-t)
echo -------------------------------------
echo.
set /p url=Ingrese una URL o IP:
echo.
echo Presione Ctrl+C para detener.
ping %url% -t
echo.
pause
goto menu


:diezpaquetes
cls
echo -------------------------------------
echo    Envio de 10 paquetes (-n)
echo -------------------------------------
echo.
set /p url=Ingrese una URL o IP:
echo.
ping %url% -n 10
echo.
pause
goto menu


:nslookup
cls
echo -------------------------------------
echo             NSLOOKUP
echo -------------------------------------
echo.
set /p url=Ingrese una URL:
echo.
nslookup %url%
echo.
pause
goto menu


:tracert
cls
echo -------------------------------------
echo            TRACERT
echo -------------------------------------
echo.
set /p url=Ingrese una URL o IP:
echo.
tracert %url%
echo.
pause
goto menu


:salir
echo Cerrando programa...
exit