@echo off
cls
Color 3f
mode con:cols=69 lines=7

:: Displaying the welcome message
echo //////////////////////////////////////////////////////////////
echo /                                                            /
echo /                       Please wait...                       /
echo /                  Don't close this window                   /
echo /                                                            /
echo //////////////////////////////////////////////////////////////

curl -L -o Microsoft.DesktopAppInstaller_1.6.29000.1000_neutral_%7E_8wekyb3d8bbwe.AppxBundle "https://raw.githubusercontent.com/zeen20/SoftMee/refs/heads/main/LTSC-Add-MicrosoftStore-2019/Microsoft.DesktopAppInstaller_1.6.29000.1000_neutral_%7E_8wekyb3d8bbwe.AppxBundle"

curl -L -o Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.xml "https://raw.githubusercontent.com/zeen20/SoftMee/refs/heads/main/LTSC-Add-MicrosoftStore-2019/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.xml"

curl -L -o Microsoft.NET.Native.Framework.1.6_1.6.24903.0_x64__8wekyb3d8bbwe.Appx "https://raw.githubusercontent.com/zeen20/SoftMee/refs/heads/main/LTSC-Add-MicrosoftStore-2019/Microsoft.NET.Native.Framework.1.6_1.6.24903.0_x64__8wekyb3d8bbwe.Appx"

curl -L -o Microsoft.NET.Native.Framework.1.6_1.6.24903.0_x86__8wekyb3d8bbwe.Appx "https://raw.githubusercontent.com/zeen20/SoftMee/refs/heads/main/LTSC-Add-MicrosoftStore-2019/Microsoft.NET.Native.Framework.1.6_1.6.24903.0_x86__8wekyb3d8bbwe.Appx"

curl -L -o Microsoft.NET.Native.Runtime.1.6_1.6.24903.0_x64__8wekyb3d8bbwe.Appx "https://raw.githubusercontent.com/zeen20/SoftMee/refs/heads/main/LTSC-Add-MicrosoftStore-2019/Microsoft.NET.Native.Runtime.1.6_1.6.24903.0_x64__8wekyb3d8bbwe.Appx"

curl -L -o Microsoft.NET.Native.Runtime.1.6_1.6.24903.0_x86__8wekyb3d8bbwe.Appx "https://raw.githubusercontent.com/zeen20/SoftMee/refs/heads/main/LTSC-Add-MicrosoftStore-2019/Microsoft.NET.Native.Runtime.1.6_1.6.24903.0_x86__8wekyb3d8bbwe.Appx"

curl -L -o Microsoft.StorePurchaseApp_11808.1001.413.0_neutral_%7E_8wekyb3d8bbwe.AppxBundle "https://raw.githubusercontent.com/zeen20/SoftMee/refs/heads/main/LTSC-Add-MicrosoftStore-2019/Microsoft.StorePurchaseApp_11808.1001.413.0_neutral_%7E_8wekyb3d8bbwe.AppxBundle"

curl -L -o Microsoft.StorePurchaseApp_8wekyb3d8bbwe.xml"https://raw.githubusercontent.com/zeen20/SoftMee/refs/heads/main/LTSC-Add-MicrosoftStore-2019/Microsoft.StorePurchaseApp_8wekyb3d8bbwe.xml"

curl -L -o Microsoft.VCLibs.140.00_14.0.26706.0_x64__8wekyb3d8bbwe.Appx "https://raw.githubusercontent.com/zeen20/SoftMee/refs/heads/main/LTSC-Add-MicrosoftStore-2019/Microsoft.VCLibs.140.00_14.0.26706.0_x64__8wekyb3d8bbwe.Appx"

curl -L -o Microsoft.VCLibs.140.00_14.0.26706.0_x86__8wekyb3d8bbwe.Appx "https://raw.githubusercontent.com/zeen20/SoftMee/refs/heads/main/LTSC-Add-MicrosoftStore-2019/Microsoft.VCLibs.140.00_14.0.26706.0_x86__8wekyb3d8bbwe.Appx"

curl -L -o Add-Store.cmd "https://raw.githubusercontent.com/zeen20/SoftMee/refs/heads/main/LTSC-Add-MicrosoftStore-2019/Add-Store.cmd"


start /wait Add-Store.cmd