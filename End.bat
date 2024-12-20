@echo off
cls
color 3f
mode con:cols=69 lines=7

:: عرض رسالة ترحيبية
echo //////////////////////////////////////////////////////////////
echo /                                                            /
echo /                       Please wait...                       /
echo /                  Don't close this window                   /
echo /                                                            /
echo //////////////////////////////////////////////////////////////

:: تنظيف الملفات المؤقتة
echo Cleaning temporary files...
del /f /s /q "C:\Users\%USERNAME%\AppData\Local\Temp\*.*" >nul 2>&1
rmdir /s /q "C:\Users\%USERNAME%\AppData\Local\Temp" >nul 2>&1

del /f /s /q "C:\Windows\Temp\*.*" >nul 2>&1
rmdir /s /q "C:\Windows\Temp" >nul 2>&1

:: حذف الاختصارات غير المرغوب فيها من سطح المكتب
echo Removing unwanted desktop shortcuts...
set DesktopPath=C:\Users\%USERNAME%\Desktop
del "%DesktopPath%\VLC media player.lnk" >nul 2>&1
del "%DesktopPath%\Foxit PDF Reader.lnk" >nul 2>&1
del "%DesktopPath%\PowerISO.lnk" >nul 2>&1
del "%DesktopPath%\UltraISO.lnk" >nul 2>&1
del "%DesktopPath%\WinRAR   .lnk" >nul 2>&1
del "%DesktopPath%\Internet Download Manager.lnk" >nul 2>&1

set PublicDesktopPath=C:\Users\Public\Desktop
del "%PublicDesktopPath%\Foxit PDF Reader.lnk" >nul 2>&1
del "%PublicDesktopPath%\VLC media player.lnk" >nul 2>&1
del "%PublicDesktopPath%\PowerISO.lnk" >nul 2>&1
del "%PublicDesktopPath%\UltraISO.lnk" >nul 2>&1

:: حذف أي ملفات مؤقتة إضافية في مسارات التطبيقات
echo Cleaning Chrome installers...
for /d %%i in ("C:\Program Files\Google\Chrome\Application\*") do (
    if exist "%%i\Installer" del /f /s /q "%%i\Installer\*" >nul 2>&1
)

:: تنظيف سلة المهملات
echo Cleaning Recycle Bin...
powershell -command "Clear-RecycleBin -Confirm:$false" >nul 2>&1

:: عرض رسالة انتهاء التنظيف
echo All temporary files, shortcuts, and Recycle Bin have been cleaned!
echo Press any key to exit...


:: إنهاء السكربت
exit
