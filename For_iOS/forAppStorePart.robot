*** Settings ***
Library    AppiumLibrary

*** Variables ***
${Server_IP}        https://localhost:4723/wd/hub   
${Bundle_ID}        com.apple.AppStore
${appActivity}      com.apple.AppStore.main
${Search_Text}      Duolingo

*** Keywords ***
Open AppStore App
    Open Application    ${Server_IP}    ${Bundle_ID}    ${appActivity}

Search And Install Duolingo App
    [Arguments]    ${Search_Text}
    Click Element   ##XCUIElementSearchField##
    Input Text      ##XCUIElementSearchField##    ${Search_Text}
    Click Element   ##XCUIElementSearchField with the name ${Search_Text}##
    Click Element   ##XCUIElement Button##

    ##This sleep function is the downloading time for the app##
    Sleep    300