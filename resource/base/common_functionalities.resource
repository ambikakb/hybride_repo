*** Settings ***
Documentation   This resource filr contains configureation
...   and reusable scripts
Library  SeleniumLibrary
*** Variables ***
${BROWSER_NAME}    chrome
${URL}   https://www.nykaa.com/
*** Keywords ***
Launch Browser, Naviagte To Url And Click SignIN
    Open Browser    browser=${BROWSER_NAME}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=${URL}
    Click Element    xpath=//button[@class='css-16vyron']
    Click Element    xpath=//button[@class='css-1yvfnuc']
Capture Screenshot And Close Browser
    Run Keyword And Ignore Error    Capture Page Screenshot
    Close Browser