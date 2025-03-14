@echo off
call Config.cmd
color %Colour%
:Start
cls
chcp 65001
mode con lines=25 cols=100
title Agent Redish Red's Multitool
if %CC% == Yes color A

:banner
echo.
echo ███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗
echo ████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║
echo ██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
echo ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.

for /f "delims=" %%p in (USRID.txt) do set ID=%%p
for /f "delims=" %%i in (USRPW.txt) do set PW=%%i

:login
set /p "USRID=Enter Username: "
set /p "USRPW=Enter Password: "
if "%USRID%"=="%ID%" if "%USRPW%"=="%PW%" goto AN
echo Password or Username incorrect. Timeout for 60 seconds.
timeout /t 60 /nobreak
goto login

:AN
if %AN% == No goto menu
if %CC% == Yes (
    for %%c in (A B C) do (
        color %%c
        timeout /t 1 >nul
    )
)
cls
goto menu

:menu
echo.
echo ███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗
echo ████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║
echo ██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
echo ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.

echo Welcome, %ID%. It is currently the %date% at %time%.
echo ---------------------------------------------------------------------------------
echo Note that this tool is still largely work in progress.
echo ---------------------------------------------------------------------------------
echo You have a list of actions you may use. Simply type in the action ID and hit enter.
echo ---------------------------------------------------------------------------------
echo  0. Settings (In the config.cmd file now.)
echo  1. (WIP - DO NOT ENTER THIS ID)
echo  2. IP tools (WIP -- Am gonna add an IP changer IF I can)
echo  3. Open TOR with a specific website (You need to include TOR in the folder for this. Pretty useless except for tool 7.
echo  4. Webcrawler (WIP - DO NOT ENTER THIS ID -- I don't think this will ever work)
echo  5. Edit Username/Password (WIP - DO NOT ENTER THIS ID)
echo  6. Bruteforcer (WIP - DO NOT ENTER THIS ID)
echo  7. Useful websites (WIP - DO NOT ENTER THIS ID)
echo  8. Other (WIP)
echo  9. Jump to Action ID
echo 10. Exit
set /p "AID=Enter Action ID: "
cls
title Agent Redish Red's Multitool - Currently using: Tool #%AID%
echo Welcome to tool #%AID%
goto %AID%

:0
echo.
echo ███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗
echo ████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║
echo ██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
echo ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.

echo These are the settings.
echo Type in an Action ID you wanna edit and hit enter.
echo.
echo 0.1 Easter eggs (There are none until yet)
echo 0.2 Animations
echo 0.3 Banner
echo 0.4 Window size
echo 0.5 Ask before exit of program [has bugs]
echo 0.6 Main Colour
echo --------------------------------------------------------------------------
echo 0.7 Back to main page
set /p "AID=Enter Action ID: "
cls
title Agent Redish Red's Multitool - Currently using: Tool #%AID%
goto %AID%

:0.1 :0.2 :0.3 :0.5 :0.6
set /p "VALUE=Yes/No: "
if "%VALUE%"=="Yes" goto 0
if "%VALUE%"=="No" goto 0
echo Invalid value. Only use Yes/No.
cls
goto %AID%

:0.4
set /p "L=Line size: "
set /p "C=Cols: "
mode con lines=%L% cols=%C%
goto 0

:0.7
goto AN
pause

:1
echo.
echo ███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗
echo ████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║
echo ██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
echo ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.

if %CC% == Yes color D
cls
echo Usage of this tool is only permitted for educational purposes. You may only use this on your own computer or on a computer you have permission to use it on. I, the creator of this tool do NOT carry any legal responsibility for your actions, neither do I recommend or endorse illegal actions.
echo Also, note that this tool is not capable of taking down basically anything, as you would need to do something else first, which I will not tell.
set /p "IP=Enter Target IP: "
echo ATTACK WILL START IN FIVE (5) SECONDS. YOUR LAST CHANCE IS TO CLOSE THIS WINDOW.
timeout /t 5
for /L %%i in (1,1,10) do start cmd /K ping %IP% -t -l 6500
goto menu

:2
echo.
echo ███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗
echo ████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║
echo ██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
echo ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.

cls
if %CC% == Yes color E
echo These are the IP tools.
echo Illegal use of following tools may be punishable by law.
echo I do not hold ANY responsibility for your actions.
echo Enter Action ID and press enter.
echo.
echo 2.1 Tools about my IP and internet
echo 2.2 Other's IP
echo --------------------------------------------------------------------------
echo 0.7 Back to menu
set /p "AID=Enter Action ID: "
cls
title Agent Redish Red's Multitool - Currently using: Tool #%AID%
goto %AID%

:2.1
echo These are the tools for your IP.
echo Enter Action ID and press enter.
echo.
echo 2.1.1 What is my IP? (Public)
echo 2.1.2 Do I have internet?
echo 2.1.3 Ping my IP
echo --------------------------------------------------------------------------
echo 0.7 Back to menu
echo 2.3 Back to IP tools menu
set /p "AID=Enter Action ID: "
cls
title Agent Redish Red's Multitool - Currently using: Tool #%AID%
goto %AID%

:2.1.1 :2.1.2 :2.1.3
for /f "tokens=1* delims=: " %%A in ('nslookup myip.opendns.com. resolver1.opendns.com 2^>NUL^|find "Address:"') do set ExtIP=%%B
if "%AID%"=="2.1.1" (
    echo Public IP is: %ExtIP%
) else if "%AID%"=="2.1.2" (
    ping %ExtIP%
    echo INTERNET CONNECTION PRESENT?
    if %errorlevel% == 0 echo Yes
    if %errorlevel% == 1 echo No
) else if "%AID%"=="2.1.3" (
    ping %ExtIP%
)
echo --------------------------------------------------------------------------
echo 0.7 Back to menu
echo 2.3 Back to IP tools menu
set /p "AID=Enter Action ID: "
cls
title Agent Redish Red's Multitool - Currently using: Tool #%AID%
goto %AID%

:2.2
echo These are the tools for others' IPs.
if %TIP% ==0 set /p "TIP=Enter Target IP: "
echo Type in an Action ID and then hit enter.
echo This is still work in progress.
echo Also, note that entering a wrong IP will make the tool crash.
echo.
echo 2.2.1 Change target IP
echo 2.2.2 Ping target IP
echo --------------------------------------------------------------------------
echo 0.7 Back to menu
echo 2.3 Back to IP tools menu
set /p "AID=Enter Action ID: "
cls
title Agent Redish Red's Multitool - Currently using: Tool #%AID%
goto %AID%

:2.2.1
set /p "TIP=Enter Target IP: "
goto 2.2

:2.2.2
ping %TIP%
echo Redirecting back in 5 seconds.
timeout /t 5
goto 2.2

:9
set /p "AID=Enter Action ID: "
cls
title Agent Redish Red's Multitool - Currently using: Tool #%AID%
goto %AID%

:10
if %ABE% == Yes (
    exit
) else if %ABE% == No (
    set /p "EX=Are you sure you wanna exit? (Y/N): "
    if "%EX%"=="Y" (
        exit
    ) else if "%EX%"=="N" (
        goto menu
    )
)
echo Incorrect value entered. Try again.
goto 10

:3
echo.
echo ███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗
echo ████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║
echo ██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
echo ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.

set /p "WEBS=Enter website you wanna enter: "
start "test.com" "C:\Users\%USERNAME%\Desktop\ARR-Multitool\Tor Browser\Browser\firefox.exe" "%WEBS%"
cls
title Redirecting..
timeout /t 1
cls
goto menu

:4
echo.
echo ███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗
echo ████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║
echo ██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
echo ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.

echo This tool is work in progress. [Note that creation of this tool may take a while, or never even occur.]
timeout /t 3
goto menu

:5
set ULI=0
echo.
echo ███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗
echo ████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║
echo ██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
echo ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
echo Welcome to the Username/Password changer.
echo Type in an action ID and hit enter.
echo 5.1 View Username/Password
echo 5.2 Edit Username
echo 5.3 Edit Password
echo 5.4 View default Password
echo 5.5 Reset Username and Password to default
echo --------------------------------------------------------------------------
echo 0.7 Back to menu
set /p "AID=Enter Action ID: "
cls
title Agent Redish Red's Multitool - Currently using: Tool #%AID%
goto %AID%

:5.1
echo Your current Username is: %ID%
echo Your current Password is: %PW%
echo --------------------------------------------------------------------------
echo 0.7 Back to menu
echo 5.6 Back to Username/Password menu
set /p "AID=Enter Action ID: "
cls
title Agent Redish Red's Multitool - Currently using: Tool #%AID%
goto %AID%

:5.2 :5.3 :5.5
echo This action requires Log-in.
if %ULI% == 1 (
    if "%AID%"=="5.2" (
        set /p CID=Enter desired new Username:
        fart.exe USRID.txt %ID% %CID%
        set ULI=0
        echo Username successfully changed.
    ) else if "%AID%"=="5.3" (
        set /p CPW=Enter desired new Password:
        fart.exe USRPW.txt %PW% %CPW%
        set ULI=0
        echo Password successfully changed.
    ) else if "%AID%"=="5.5" (
        fart.exe USRPW.txt %PW% P
        fart.exe USRID.txt %ID% U
        set ULI=0
        echo Username and password successfully reset to default.
    )
) else (
    goto Login-T5
)
echo --------------------------------------------------------------------------
echo 0.7 Back to menu
echo 5.6 Back to Username/Password menu
set /p "AID=Enter Action ID: "
cls
title Agent Redish Red's Multitool - Currently using: Tool #%AID%
goto %AID%

:5.4
echo Default Username: U
echo Default Password: P
echo --------------------------------------------------------------------------
echo 0.7 Back to menu
echo 5.6 Back to Username/Password menu
set /p "AID=Enter Action ID: "
cls
title Agent Redish Red's Multitool - Currently using: Tool #%AID%
goto %AID%

:5.6
cls
goto 5

:Login-T5
set /p "USRID=Enter Username: "
set /p "USRPW=Enter Password: "
if "%USRID%"=="%ID%" if "%USRPW%"=="%PW%" (
    set ULI=1
    goto %AID%
)
echo Password or Username incorrect. You are now on time out for 60 seconds.
timeout /t 60 /nobreak
goto Login-T5

:8
cls
echo.
echo ███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗
echo ████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║
echo ██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
echo ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
echo ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
echo Welcome to the "Other menu" which you could also just call page 2.
echo Type in an Action ID and hit enter.
echo -------------------------------------------------------------------------
echo Note that this menu was based upon the Auxiliary multitool. However, all the code belongs to me, the previously mentioned tool was an inspiration for more tools.
echo -------------------------------------------------------------------------
echo 8.1 View system info
echo 8.2 View all netstats
echo 8.3 Shutdown
echo 8.4 Log off
echo 8.5 Open cmd
echo 8.6 Open TOR
echo 8.7 View Network
echo 8.8 Start WAOM (Windows Advanced Options Menu)
echo 8.9 Start Task Manager
echo 8.10 Start other programs
echo --------------------------------------------------------------------------
echo 0.7 Back to menu
set /p "AID=Enter Action ID: "
cls
title Agent Redish Red's Multitool - Currently using: Tool #%AID%
goto %AID%

:8.1
cls
echo Welcome to systeminfo.
systeminfo
echo --------------------------------------------------------------------------
echo 0.7 Back to menu
echo 8.11 Back to "Other Menu"/Page 2
set /p "AID=Enter Action ID: "
cls
title Agent Redish Red's Multitool - Currently using: Tool #%AID%
goto %AID%

:8.2
cls
echo Welcome to netstat.
netstat
echo --------------------------------------------------------------------------
echo 0.7 Back to menu
echo 8.11 Back to "Other Menu"/Page 2
set /p "AID=Enter Action ID: "
cls
title Agent Redish Red's Multitool - Currently using: Tool #%AID%
goto %AID%

:8.3
shutdown /s /f /t 0

:8.4
shutdown /l

:8.5
start
goto 8

:8.6
start "" "C:\Users\%USERNAME%\Desktop\ARR-Multitool\Tor Browser\Browser\firefox.exe"
goto 8

:8.7
cls
echo Welcome to your network
arp -a
echo --------------------------------------------------------------------------
echo 0.7 Back to menu
echo 8.11 Back to "Other Menu"/Page 2
set /p "AID%=Enter Action ID: "
cls
title Agent Redish Red's Multitool - Currently using: Tool #%AID%
goto %AID%

:8.9
cls
echo Welcome to your path tree.
tree /f /a
echo --------------------------------------------------------------------------
echo 0.7 Back to menu
echo 8.11 Back to "Other Menu"/Page 2
set /p "AID=Enter Action ID: "
cls
title Agent Redish Red's Multitool - Currently using: Tool #%AID%
goto %AID%

:8.10
cls
echo Welcome to program opener. This tool will require either a file path or the file name (eg firefox.exe)
set /p "PRGRM=Enter Program name/path: "
start %PRGRM%
echo --------------------------------------------------------------------------
echo 0.7 Back to menu
echo 8.11 Back to "Other Menu"/Page 2
set /p "AID=Enter Action ID: "
cls
title Agent Redish Red's Multitool - Currently using: Tool #%AID%
goto %AID%

:8.11
goto 8
