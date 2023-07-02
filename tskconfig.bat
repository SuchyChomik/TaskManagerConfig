::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDZdTwyDmYmGIroL5uT07u6UnnoUWuYwb5ybjfS8JecW7kzwNb8u2XQUkcgDbA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIVJhpWQAHNGGKpB7cQ7ajP7vmM4mAcWuM4fZ27
::eg0/rx1wNQPfEVWB+kM9LVsJDBCRN2i1CLMV76b+9+/n
::fBEirQZwNQPfEVWB+kM9LVsJDBCRN2i1CLMV76b+9+/n
::cRolqwZ3JBvQF1fEqQIVJhpWQAHNGGKpB7cQ7ajP7vmM4mAcWuM4fZ27
::dhA7uBVwLU+EWHKN7U1wCxRGXAuQPX+zCbt8
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE100gMQldSwyWfCO5T/U34fH0r8mIsF0SRuMrcYDVug==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDZdTwyDmYmGIrAP4/z0/9aTsUYeW+w5cYiV36yLQA==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Disable or enable Task Manager
:main
cls
echo 1 - Disable Task Manager
echo 2 - Enable Task Manager
set /p "ask=>"
if %ask%==1 goto Disable
if %ask%==2 goto Enable
goto redirect

:redirect
goto main

:Enable
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f
cls
echo Task Manager Enabled!
pause>nul
exit

:Disable
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
cls
echo Task Manager Disabled!
pause>nul
exit