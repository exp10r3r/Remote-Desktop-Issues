@echo off
color 0A
title 3389连接痕迹清除     by githup/dashuaib
mode con cols=88 lines=20
echo =======================================================================================
echo win10和win8 远程连接请去掉打印机勾选项，这是bug，暂时没办法解决。
echo =======================================================================================
set /p fk= 确定要清空3389连接痕迹吗？(y/n)
if /i "%fk%"=="y" goto y
if /i "%fk%"=="n" goto n
call %0

:y
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client" /f
del /a /f /q %HOMEPATH%\Documents\Default.rdp
echo 命令执行成功，请手动查看是否清除。
pause >nul

:n
exit
