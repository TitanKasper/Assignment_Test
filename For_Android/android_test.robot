**Settings**
Library             AppiumLibrary
Resource            forPlaystorePart.robot
Resource            forDuolingoPart.robot

**Variables**
${Server_IP}            https://localhost:4725/wd/hub


**Test Cases**
Test Assignment
    Open PlayStore App
    Search And Install Duolingo App
    Open Duolingo App and Test Login
    Enter Test Email And Password           testkasper@gmail.com    testkasper123
    Tap Signin Button
    Close Application
    [Teardown]      
    Uninstall Application                   com.duolingo

