@echo off
echo 正在重置Navicat 17试用期...
echo.

REM 1. 删除Navicat 17注册表项
reg delete "HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Registration17XCS" /f 2>nul
reg delete "HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Update" /f 2>nul

REM 2. 使用单次查询直接删除所有相关CLSID项
for /f "tokens=*" %%a in ('reg query "HKEY_CURRENT_USER\Software\Classes\CLSID" /s ^| findstr /i "\\Info𝑆ℎ𝑒𝑙𝑙𝐹𝑜𝑙𝑑𝑒𝑟
"') do (
reg delete "%%a" /f 2>nul
)

echo 操作完成！
echo 请重启Navicat 17开始新的试用期
pause
