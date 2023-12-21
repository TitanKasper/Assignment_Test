*** Settings ***
Library    AppiumLibrary

*** Variables ***
${Server_IP}        https://localhost:4723/wd/hub  
${Bundle_ID}        com.duolingo.DuolingoMobile
${email}            testkasper@gmail.com
${password}         testkasper123

*** Keywords ***
Open Duolingo App and Test Login
    Open Application    ${Server_IP}    ${Bundle_ID}
    Click Element       ##XCUIElement Button##

Enter Test Email And Password
    [Arguments]         ${email}    ${password}
    Input Text          ##XCUIElement_TextInputfield##    ${email}
    Input Text          ##XCUIElement_TextInputfield##    ${password}

Tap Signin Button
    Click Element       ##XCUIElement Button##