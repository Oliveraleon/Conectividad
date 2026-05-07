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
echo 2 - Obtener IP de la placa
echo 3 - Prueba de Conectividad Estandar
echo 4 - Monitoreo Continuo (-t)
echo 5 - Enviar 10 paquetes (-n)
echo 6 - Salir
echo.
set /p opcion=Seleccione una opcion: 

if %opcion%==1 goto loopback
if %opcion%==2 goto obtenerip
if %opcion%==3 goto estandar
if %opcion%==4 goto continuo
if %opcion%==5 goto diezpaquetes
if %opcion%==6 goto salir

echo.
echo Opcion invalida
pause
goto menu

:loopback
cls
echo -------------------------------------
echo   verificacion de buble local
echo -------------------------------------
echo.
ping 127.0.0.1
echo.
pause
goto menu

:obtenerip
cls
echo -------------------------------------
echo      conseguir ip
echo -------------------------------------
echo.
ipconfig
echo.
pause
goto menu

:estandar
cls
echo -------------------------------------
echo   Pprueba de conectividad
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
echo      monitoreo continuo (-t)
echo -------------------------------------
echo.
set /p url=Ingrese una URL o IP: 
echo.
echo Presione Ctrl+C para detener el monitoreo.
ping %url% -t
echo.
pause
goto menu

:diezpaquetes
cls
echo -------------------------------------
echo      envio de 10 paquetes (-n)
echo -------------------------------------
echo.
set /p url=Ingrese una URL o IP: 
echo.
ping %url% -n 10
echo.
pause
goto menu

:salir
echo Cerrando programa...
exit