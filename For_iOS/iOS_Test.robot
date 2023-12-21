**Settings**
Library     AppiumLibrary
Resource    forAppStorePart.robot
Resource    forDuolingoiOS.robot

**Variables**
${Server_IP}            https://localhost:4725/wd/hub

**Test Cases**
Test assignment for iOS installation
    Open AppStore App
    Search And Install Duolingo App
    Enter Test Email And Password       testkasper@gmail.com    testkasper123
    Tap Signin Button
    Close Application
    [Teardown]      
    Uninstall Application               com.duolingo.DuolingoMobile