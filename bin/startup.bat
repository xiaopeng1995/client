@echo off & setlocal enabledelayedexpansion
title QQ593619428-client-succeed!
set  cc=succeed

echo %cc%
cd %~dp0

set LIB_JARS=""
cd ..\lib
for %%i in (*) do set LIB_JARS=!LIB_JARS!;..\lib\%%i
cd ..\bin

java -Dapp.home=../ -Xms64m -Xmx1024m -classpath ..\conf;%LIB_JARS% org.fengfei.lanproxy.client.ProxyClientContainer
goto end